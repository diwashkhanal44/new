import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/category_wise_news/models/NewsCategory.dart';
import 'package:you/features/category_wise_news/repository/NewsCategoryRepository.dart';

part 'unauthenticatednewscategories_state.dart';
part 'unauthenticatednewscategories_cubit.freezed.dart';

class UnauthenticatednewscategoriesCubit
    extends Cubit<UnauthenticatednewscategoriesState> {
  final _logger = Logger('UnauthenticatednewscategoriesCubit');
  final NewsCategoryRepository _repository;
  UnauthenticatednewscategoriesCubit(
      {required NewsCategoryRepository repository})
      : _repository = repository,
        super(UnauthenticatednewscategoriesState.initial());

  fetch({required String langauge}) async {
    try {
      _logger.info('loading');
      emit(UnauthenticatednewscategoriesState.loading());

      final categoryResponse =
          await _repository.getTheNewsCategory(language: langauge);

      categoryResponse.fold(
          (l) => {
                _logger.severe(l.failureMessage),
                emit(UnauthenticatednewscategoriesState.failed(
                    failureMessage: l.failureMessage))
              },
          (r) => {
                _logger.info('loaded'),
                emit(UnauthenticatednewscategoriesState.loaded(newsCategory: r))
              });
    } catch (e) {
      _logger.severe("$e");
      emit(UnauthenticatednewscategoriesState.failed(
          failureMessage: "Error OCcured"));
    }
  }

  changeLanguage({String langauge = 'en'}) {
    fetch(langauge: langauge);
  }
}
