part of 'unitcategories_cubit.dart';

abstract class UnitcategoriesState extends Equatable {
  final List<Category> unitCategories;
  final MetalForexModel? metalForex;
  final CurrencyForexModel? currencyForexDate;

  final List<Payload>? searchedForex;

  UnitcategoriesState(this.unitCategories, this.metalForex,
      this.currencyForexDate, this.searchedForex);
}

class UnitcategoriesStateLoading extends UnitcategoriesState {
  UnitcategoriesStateLoading(List<Category> unitCategories,
      MetalForexModel? metalForex, CurrencyForexModel? currencyForexDate)
      : super(unitCategories, metalForex, currencyForexDate, null);

  @override
  List<Object?> get props => [unitCategories, metalForex, currencyForexDate];
}

class UnitcategoriesStateInitial extends UnitcategoriesState {
  UnitcategoriesStateInitial() : super([], null, null, null);

  @override
  List<Object?> get props => [unitCategories, metalForex, currencyForexDate];
}

class UnitcategoriesStateLoaded extends UnitcategoriesState {
  UnitcategoriesStateLoaded(
      List<Category> unitCategories,
      MetalForexModel? metalForex,
      CurrencyForexModel? currencyForexDate,
      List<Payload>? searchedForex)
      : super(unitCategories, metalForex, currencyForexDate, searchedForex);

  @override
  List<Object?> get props =>
      [unitCategories, metalForex, currencyForexDate, searchedForex];
}

class UnitcategoriesStateFailed extends UnitcategoriesState {
  UnitcategoriesStateFailed(List<Category> unitCategories,
      MetalForexModel? metalForex, CurrencyForexModel? currencyForexDate)
      : super(unitCategories, metalForex, currencyForexDate, null);

  @override
  List<Object?> get props => [unitCategories, metalForex, currencyForexDate];
}
