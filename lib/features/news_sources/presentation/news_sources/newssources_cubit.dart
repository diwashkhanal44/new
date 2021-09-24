import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/news_sources/models/NewsSourceModel.dart';
import 'package:you/features/news_sources/repositories/NewsSourcesRepo.dart';

part 'newssources_state.dart';
part 'newssources_cubit.freezed.dart';

class NewssourcesCubit extends Cubit<NewssourcesState> {
  final Logger _logger;

  NewssourcesCubit({required GetNewsSources getNewsSources})
      : _getNewsSources = getNewsSources,
        _logger = Logger("NewsSourcesCubit"),
        super(NewssourcesState.initial());

  final GetNewsSources _getNewsSources;

  fetch() async {
    final stateBeforeFetching = state;
    emit(NewssourcesState.loading());

    final latestNews = await _getNewsSources.getNewsSources();

    latestNews.fold((l) {
      _logger.severe("failure ${l.failureMessage}");

      emit(NewssourcesState.failure(
        failureMessage: l.failureMessage,
      ));
    }, (r) {
      _logger.info("loaded ");

      // this is useful for pagination
      stateBeforeFetching.maybeWhen(
          orElse: () {},
          loaded: (previousNews) {
            previousNews.data?.reversed.forEach((element) {
              if (!(r.data!.contains(element))) {
                r.data?.insert(0, element);
              }
            });
          });

      emit(NewssourcesState.loaded(allNewsSources: r));
    });
  }
}
