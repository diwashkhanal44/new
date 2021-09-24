import 'package:you/config/endpoints.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/all_utils/models/CurrencyForexModel.dart';
import 'package:you/features/all_utils/models/MetalForexModel.dart';

class ForexRepo {
  final HttpCalls httpCalls;
  ForexRepo({required this.httpCalls});

  Future<MetalForexModel> getMetalForex() async {
    final url = "${Endpoints.baseWithScheme}${Endpoints.getGoldSilverPrice}";
    var result = await httpCalls(url: url, method: ApiCallMethod.GET);
    return MetalForexModel.fromJson(result);
  }

  Future<CurrencyForexModel> getLastSevenDaysCurrencyForex() async {
    var url =
        "https://www.nrb.org.np/api/forex/v1/rates?per_page=50&page=1&from=${getDate(DateTime.now().subtract(Duration(days: 50)))}&to=${getDate(DateTime.now())}";
    var status = await httpCalls(url: url, method: ApiCallMethod.GET);
    return CurrencyForexModel.fromMap(status);
  }
}

String getDate(DateTime dateTime) {
  String year = dateTime.year.toString();
  String mounth = dateTime.month < 10
      ? '0' + dateTime.month.toString()
      : dateTime.month.toString();

  String day = dateTime.day < 10
      ? '0' + dateTime.day.toString()
      : dateTime.day.toString();

  return (year + '-' + mounth + '-' + day);
}
