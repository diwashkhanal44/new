import 'dart:convert';
import 'dart:io';
import 'package:you/features/all_utils/utils.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/external/connectivity/check_connectivity.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';

const String _loginCredintialKey = "loginCredential";

enum ApiCallMethod { GET, POST, PUT, DELETE }

class HttpCalls {
  final NetWorkInfo _netWorkInfo;
  // ignore: unused_field
  final http.Client _httpClient;
  final SharedPreferences _preferences;
  final FlutterSecureStorage _flutterSecureStorage;
  final Logger _logger = Logger("HttpCalls");
  final Map<String, String> _cookies = {};

  HttpCalls({
    required NetWorkInfo netWorkInfo,
    required http.Client httpClient,
    required SharedPreferences sharedPreferences,
    required FlutterSecureStorage flutterSecureStorage,
  })  : _httpClient = httpClient,
        _netWorkInfo = netWorkInfo,
        _preferences = sharedPreferences,
        _flutterSecureStorage = flutterSecureStorage;

  Future<dynamic> call(
      {required String url,
      required ApiCallMethod method,
      Map<String, dynamic>? body,
      bool guarded = false}) async {
    try {
      _logger.info("accessing $url");

      Map<String, String>? headers;

      if (guarded)
        headers = {
          "Authorization":
              "Bearer " + await getAccessTokenFromPersistanceStorage(),
        };

      if (!(await _netWorkInfo.isConnected)) {
        throw ServerException(
          description: "Your device is not connected to internet.",
          message: "No Internet",
        );
      }

      final request = http.Request(describeEnum(method), Uri.parse(url));

      request.body = json.encode(body);
      if (headers != null) request.headers.addAll(headers);

      request.headers.addAll(
          {'Content-Type': 'application/json', "Accept": "application/json"});

      // get the previous cookies and send them in request
      final cookies = await _generateCookieHeader();
      if (cookies.isNotEmpty) request.headers['cookie'] = cookies;

      http.StreamedResponse streamedResponse = await request.send();

      final response = await http.Response.fromStream(streamedResponse);

      _updateCookie(response);

      _logger.info("completed $url ");
      _logger.info("status ${response.statusCode} $url ");
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        if (response.statusCode == 422) {
          final error = json.decode(response.body);
          final message = error["errors"] != null
              ? (error["errors"] as Map<String, dynamic>)
                  .entries
                  .map((e) => e.value)
                  .toList()
                  .toString()
                  .replaceAll('[', '')
                  .replaceAll(']', '\n')
              : "";

          throw ServerException(message: error["message"] + '\n$message');
        }
        if (response.statusCode == 401) {
          String message;
          try {
            message = json.decode(response.body)["message"];
          } catch (e) {
            message = "Not Athorized";
          }
          throw ServerException(message: message);
        }
        if (response.statusCode == 404) {
          throw ServerException(
              message: "url not found", statusCode: response.statusCode);
        }

        final jsonObject = json.decode(response.body);

        throw ServerException(
            description:
                jsonObject["error_description"] ?? jsonObject["message"] ?? "",
            message: jsonObject["error"] ?? "Unknown Error",
            statusCode: response.statusCode);
      }
    } catch (e) {
      if (e is SocketException) {
        throw ServerException(
          description: "Could not reach server",
          message: "Internet Error",
        );
      } else
        rethrow;
    }
  }

  Future<String> getAccessTokenFromPersistanceStorage() async {
    final token = await _flutterSecureStorage.read(key: _loginCredintialKey);

    return (token != null)
        ? loginCredentialModelFromJson(token).data!.accessToken!
        : throw Exception("Token is not present");
  }

  /// this will update cookie in secure storage as well as in the [cookies]
  void _updateCookie(http.Response response) async {
    String? allSetCookie = response.headers['set-cookie'];

    if (allSetCookie != null) {
      await _flutterSecureStorage.write(key: 'set-cookie', value: allSetCookie);
      updateCookieFromString(allSetCookie);
    }
  }

  void updateCookieFromString(String allSetCookie) {
    var setCookies = allSetCookie.split(',');

    for (var setCookie in setCookies) {
      var cookies = setCookie.split(';');

      for (var cookie in cookies) {
        _setCookie(cookie);
      }
    }
  }

  void _setCookie(String rawCookie) {
    if (rawCookie.length > 0) {
      int idx = rawCookie.indexOf("=");
      if (idx >= 0) {
        var key = rawCookie.substring(0, idx).trim();
        var value = rawCookie.substring(idx + 1).trim();
        if (key == 'path' ||
            key == 'expires' ||
            key == 'domain' ||
            key == 'SameSite') return;
        _cookies[key] = value;
      }
    }
  }

  Future<String> _generateCookieHeader() async {
    final localCookie = await _flutterSecureStorage.read(key: 'set-cookie');
    if (localCookie != null) updateCookieFromString(localCookie);

    String cookie = "";
    for (var key in _cookies.keys) {
      if (cookie.length > 0) cookie += ";";
      cookie += key + "=" + _cookies[key]!;
    }
    return cookie;
  }

  Future multipart({
    required String url,
    required Map<String, File> filesField,
    required Map<String, String> fields,
  }) async {
    try {
      var req = http.MultipartRequest('POST', Uri.parse(url));
      final files = filesField.entries.map(
        (element) => http.MultipartFile(element.key,
            element.value.readAsBytes().asStream(), element.value.lengthSync(),
            filename: element.value.path.split('/').last),
      );
      req.files.addAll(files);
      req.fields.addAll(fields);
      req.headers.addAll({
        'Accept': 'application/json',
        "Authorization":
            "Bearer " + await getAccessTokenFromPersistanceStorage(),
      });

      final response = await http.Response.fromStream(await req.send());
      print(response.body);
      _logger.info("access complete ${response.statusCode} $url");

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        if (response.statusCode == 422) {
          final error = json.decode(response.body);
          final message = error["errors"] != null
              ? (error["errors"] as Map<String, dynamic>)
                  .entries
                  .map((e) => e.value)
                  .toList()
                  .toString()
                  .replaceAll('[', '')
                  .replaceAll(']', '\n')
              : "";

          throw ServerException(message: error["message"] + '\n$message');
        }
        if (response.statusCode == 401) {
          String message;
          try {
            message = json.decode(response.body)["message"];
          } catch (e) {
            message = "Not Athorized";
          }
          throw ServerException(message: message);
        }
        if (response.statusCode == 404) {
          throw ServerException(
              message: "url not found", statusCode: response.statusCode);
        }

        final jsonObject = json.decode(response.body);

        throw ServerException(
            description:
                jsonObject["error_description"] ?? jsonObject["message"] ?? "",
            message: jsonObject["error"] ?? "Unknown Error",
            statusCode: response.statusCode);
      }
    } catch (e) {
      if (e is SocketException) {
        throw ServerException(
          description: "Could not reach server",
          message: "Internet Error",
        );
      } else
        rethrow;
    }
  }
}
