import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:you/features/all_utils/models/CurrencyForexModel.dart';
import 'package:you/features/all_utils/models/MetalForexModel.dart';
import 'package:you/features/all_utils/models/UnitCategory.dart';
import 'package:you/features/all_utils/models/Units.dart';
import 'package:you/features/all_utils/repo/ForexRepo.dart';

part 'unitcategories_state.dart';

class UnitcategoriesCubit extends Cubit<UnitcategoriesState> {
  final ForexRepo _forexRepo;

  final _logger = Logger("UnitcategoriesCubit");
  UnitcategoriesCubit({required ForexRepo forexRepo})
      : _forexRepo = forexRepo,
        super(UnitcategoriesStateInitial());

  getCategories({required BuildContext context}) async {
    try {
      emit(UnitcategoriesStateLoading(
          state.unitCategories, state.metalForex, state.currencyForexDate));

      await _retrieveLocalCategories(context);
    } catch (e) {
      _logger.severe('$e');
      emit(UnitcategoriesStateFailed(
          [], state.metalForex, state.currencyForexDate));
    }
  }

  Future<void> _retrieveLocalCategories(BuildContext context) async {
    List<Category>? unitCategories;

    final regularUnitsJson = DefaultAssetBundle.of(context)
        .loadString('assets/data/regular_units.json');
    final unitsData = JsonDecoder().convert(await regularUnitsJson);
    if (unitsData is! Map) {
      throw ("Date retreived from API is not Map");
    }
    unitCategories = [];

    unitsData.keys.forEach((key) {
      final List<Unit> units = unitsData[key]
          .map<Unit>((dynamic data) => Unit.fromJson(data))
          .toList();
      var category = Category(
        name: key,
        units: units,
        iconLocation: "assets/gold.png",
      );

      unitCategories!.add(category);

      emit(UnitcategoriesStateLoaded(
          unitCategories, state.metalForex, state.currencyForexDate, null));
    });

    _getCurrencyData(unitCategories);
    getMetalPrice();
  }

  _getCurrencyData(List<Category>? unitCategories) async {
    final currencyModel = await getCurrencyData();
    List<Unit> units = currencyModel.data!.payload!.last.rates!
        .map(
          (e) => Unit(
              name: e.currency!.name!,
              conversion: e.currency!.unit! / double.tryParse(e.buy!)!),
        )
        .toList();

    units.insert(0, Unit(name: "Nepali Rupee", conversion: 1));

    unitCategories!.add(
      Category(
        name: "Currency Convert",
        units: units,
        iconLocation: "assets/gold.png",
      ),
    );
    _logger.info('UnitcategoriesStateLoaded');

    emit(UnitcategoriesStateLoaded(
        unitCategories, state.metalForex, currencyModel, null));
  }

  Future<CurrencyForexModel> getCurrencyData() async {
    final currencyModel = await _forexRepo.getLastSevenDaysCurrencyForex();
    emit(UnitcategoriesStateLoaded(
        state.unitCategories, state.metalForex, currencyModel, null));
    return currencyModel;
  }

  getMetalPrice() async {
    final metalForex = await _forexRepo.getMetalForex();
    emit(UnitcategoriesStateLoaded(
        state.unitCategories, metalForex, state.currencyForexDate, null));
    _logger.info('UnitcategoriesStateLoaded');
  }

  searchCurrency(String value) {
    if (state is UnitcategoriesStateLoaded) {
      if (state.currencyForexDate != null) {
        List<Rate> rates = [];
        state.currencyForexDate?.data?.payload?[0].rates?.forEach((element) {
          if (element.currency!.iso3!.toLowerCase().contains(value) ||
              element.currency!.name!.toLowerCase().contains(value)) {
            rates.add(element);
          }
        });

        final searchResult =
            state.currencyForexDate?.data?.payload?[0].copyWith(rates: rates);

        if (searchResult != null)
          emit(UnitcategoriesStateLoaded(state.unitCategories, state.metalForex,
              state.currencyForexDate, [searchResult]));
      }
    }
  }

  clearSearchCurrency() {
    emit(UnitcategoriesStateLoaded(
        state.unitCategories, state.metalForex, state.currencyForexDate, null));
  }
}
