import 'package:flutter/foundation.dart';
import 'package:you/config/endpoints.dart';
import 'package:you/core/external/http_calls/http_calls.dart';
import 'package:you/features/all_utils/models/SpecificDataVegtables.dart';

class KalimatiVegtablePriceProvider extends ChangeNotifier {
  final HttpCalls httpCalls;

  List<Vegtable>? todaysVegtableList;
  List<Vegtable>? searchedList;
  KalimatiVegtablePriceProvider(this.httpCalls) {
    getTodaysVegtablePriceList();
  }

  getTodaysVegtablePriceList() async {
    final todaysVegtable = await httpCalls(
        url: "${Endpoints.baseWithScheme}/api/tarkari",
        method: ApiCallMethod.GET);
    todaysVegtableList = [];

    todaysVegtable['data'].forEach((e) {
      todaysVegtableList!.add(Vegtable.fromMap(e));
    });
    notifyListeners();
  }

  searchResults(String searchTerm) {
    searchedList = [];
    todaysVegtableList?.forEach((element) {
      if (element.vegetable!.toLowerCase().contains(searchTerm.toLowerCase())) {
        searchedList?.add(element);
        notifyListeners();
      }
    });
  }

  clearSearch() {
    searchedList = null;
    notifyListeners();
  }
}
