import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/fetch_followed_news_sources/models/NewsSourcesFollowed/NewsSourcesFollowed.dart';
import 'package:you/features/fetch_followed_news_sources/repositories/FollowedNewsSourcesRepo.dart';

part 'fetchfollowednewsauth_state.dart';
part 'fetchfollowednewsauth_cubit.freezed.dart';

class FetchfollowednewsauthCubit extends Cubit<FetchfollowednewsauthState> {
  final FollowedNewsSoourcesRepo _followedNewsSoourcesRepo;
  final _logger = Logger("FollowedNewsSoourcesRepo");
  FetchfollowednewsauthCubit(
      {required FollowedNewsSoourcesRepo followedNewsSoourcesRepo})
      : _followedNewsSoourcesRepo = followedNewsSoourcesRepo,
        super(FetchfollowednewsauthState.initial());

  getFollowedNewsSources() async {
    final newsources = await _followedNewsSoourcesRepo.getFollowedNewsSources();
    newsources.fold(
        (l) => {
              _logger.severe(l),
              emit(FetchfollowednewsauthState.failed(
                  failrueMessage: l.failureMessage))
            },
        (r) =>
            emit(FetchfollowednewsauthState.fetched(newsSourcesFollowed: r)));
  }
}
