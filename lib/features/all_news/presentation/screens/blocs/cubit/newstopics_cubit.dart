import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/all_news/models/NewsTopics.dart';
import 'package:you/features/all_news/services/NewsTopicsRepository.dart';

part 'newstopics_state.dart';
part 'newstopics_cubit.freezed.dart';

class NewstopicsCubit extends Cubit<NewstopicsState> {
  final _logger = Logger('NewstopicsCubit');
  final NewsTopicsRepository _repository;
  NewstopicsCubit({required NewsTopicsRepository repository})
      : _repository = repository,
        super(NewstopicsState.initial());

  fetch({required String langauge}) async {
    try {
      _logger.info('loading');
      emit(NewstopicsState.loading());

      final categoryResponse =
          await _repository.getTheNewsTopics(language: langauge);

      categoryResponse.fold(
          (l) => {
                _logger.severe(l.failureMessage),
                emit(NewstopicsState.failed(failureMessage: l.failureMessage))
              },
          (r) => {
                _logger.info('loaded'),
                emit(NewstopicsState.loaded(newsCategory: r))
              });
    } catch (e) {
      _logger.severe("$e");
      emit(NewstopicsState.failed(failureMessage: "Error OCcured"));
    }
  }

  changeLanguage({String langauge = 'en'}) {
    fetch(langauge: langauge);
  }
}
