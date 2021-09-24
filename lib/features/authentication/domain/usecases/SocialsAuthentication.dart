import 'package:dartz/dartz.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logging/logging.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/error/exceptions.dart';
import 'package:you/core/error/failures.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/authentication/data/models/LoginCredentialModel.dart';

class SocialsAuthentication {
  final HttpCalls _httpCalls;
  final Logger _logger = Logger("SignupWithSocial");

  SocialsAuthentication({
    required HttpCalls httpCalls,
  }) : _httpCalls = httpCalls;

  // Future<Either<Failure, LoginCredentialModel>> signUp(
  //     {required LoginProvider loginProvider}) async {
  //   try {
  //     final token = await _getToken(loginProvider);

  //     if (token == null) throw "somthing went wrong";

  //     final body = {
  //       "name": token.name,
  //       "email": token.email,
  //       "unique_id": token.userid
  //     };
  //     final signupResponse = await _httpCalls(
  //         url: Endpoints.baseWithScheme +
  //             ((loginProvider == LoginProvider.Google)
  //                 ? Endpoints.socialRegisterGoogle
  //                 : Endpoints.socialRegisterFacebook),
  //         method: ApiCallMethod.POST,
  //         body: body);

  //     return Right(LoginCredentialModel(
  //         data: Data(accessToken: signupResponse["success"]["token"])));
  //   } catch (error) {
  //     if (error is ServerException) {
  //       return Left(ServerFailure(
  //           failureMessage: error.message,
  //           description: error.description,
  //           statusCode: error.statusCode));
  //     }
  //     return Left(UnknownFailure(
  //       failureMessage: "$error",
  //     ));
  //   }
  // }

  Future<Either<Failure, LoginCredentialModel>> signIn(
      {required LoginProvider loginProvider}) async {
    try {
      final token = await _getToken(loginProvider);

      if (token == null) throw "Somthing went wrong";
      final body = {"unique_id": "${token.token}"};
      final signin = await _httpCalls(
          url: Endpoints.baseWithScheme +
              ((loginProvider == LoginProvider.Google)
                  ? Endpoints.socialLoginGoogle
                  : Endpoints.socialLoginFacebook),
          method: ApiCallMethod.POST,
          body: body);
      _logger.info(signin);
      return Right(LoginCredentialModel(
          data: Data(accessToken: signin["success"]["token"])));
    } catch (error) {
      if (error is ServerException) {
        return Left(ServerFailure(
            failureMessage: error.message,
            description: error.description,
            statusCode: error.statusCode));
      }
      return Left(UnknownFailure(
        failureMessage: "$error",
      ));
    }
  }

  Future<SocialDatamodel?> _getToken(LoginProvider loginProvider) async {
    if (loginProvider == LoginProvider.Facebook) {
      return _signUpWithFacebook();
    } else if (loginProvider == LoginProvider.Google) {
      return _signUpwithGoogle();
    }
  }

  Future<SocialDatamodel?> _signUpWithFacebook() async {
    final fbLogin = FacebookLogin();
    final FacebookLoginResult result = await fbLogin.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email
    ]);

    if (result.accessToken == null) throw 'Could not authenticate facebook';
    final token = SocialDatamodel(
        token: result.accessToken!.token,
        userid: result.accessToken!.userId,
        email: await fbLogin.getUserEmail(),
        name: (await fbLogin.getUserProfile())?.name);
    await fbLogin.logOut();
    return token;
  }

  Future<SocialDatamodel?> _signUpwithGoogle() async {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'profile',
      ],
    );
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      if (googleSignInAuthentication.accessToken == null) {
        throw 'Could not authenticate google';
      }

      final token = SocialDatamodel(
          token: googleSignInAuthentication.idToken!,
          email: googleSignInAccount.email,
          userid: googleSignInAccount.id,
          name: googleSignInAccount.displayName);

      await _googleSignIn.signOut();

      return token;
    }
  }
}

class SocialDatamodel {
  final String? name;
  final String token;
  final String? email;
  final String? userid;

  SocialDatamodel(
      {this.name, required this.token, this.email, required this.userid});

  Map<String, Object?> toJson() {
    return {"name": name, "unique_id": token, "email": email, "userId": userid};
  }
}

enum LoginProvider { Facebook, Google }
