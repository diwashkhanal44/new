import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/single_news_handler/models/SingleNewsDetails/SingleNewsDetails.dart';
import 'package:you/features/single_news_handler/repository/SingleNewsHandler.dart';

part 'singlenewshandler_state.dart';
part 'singlenewshandler_cubit.freezed.dart';

class SinglenewshandlerCubit extends Cubit<SinglenewshandlerState> {
  final _logger = Logger("SinglenewshandlerCubit");
  final SingleNewsHanlderRepository _singleNewsHanlderRepository;

  SinglenewshandlerCubit(this._singleNewsHanlderRepository)
      : super(SinglenewshandlerState.initial());

  updateReactions(int newsId, int reactionId, String newReaction) async {
    _logger.info("update reaction");
    await _singleNewsHanlderRepository.updateReactionInAsession(
        reactionId: reactionId, newReaction: newReaction);
    fetchSingleNewsData(newsId);
  }

  storeReactions(int newsId, String newReaction) async {
    _logger.info("store reaction");

    final store = await _singleNewsHanlderRepository.storeReactionInAsession(
        newsId: newsId, newReaction: newReaction);

    store.fold((l) => _logger.info(l.failureMessage), (r) => _logger.info(r));

    fetchSingleNewsData(newsId);
  }

  fetchSingleNewsData(int newsId) async {
    _logger.info("fetch news details");

    final newsDataResult = await _singleNewsHanlderRepository
        .getTheSingleNewsDetails(newsId: newsId);

    final newState = newsDataResult.fold((l) {
      emit(SinglenewshandlerState.failure(failureMessage: l.failureMessage));
      _logger.severe(l.failureMessage);
    }, (r) {
      emit(SinglenewshandlerState.loaded(singleNewsDetails: r));
    });
  }

  addClickCount(int newsId) async {
    _logger.info("add click count");
    final clickCount =
        await _singleNewsHanlderRepository.addClickCount(newsId: newsId);

    final newState = clickCount.fold(
        (l) => SinglenewshandlerState.failure(failureMessage: l.failureMessage),
        (r) => SinglenewshandlerState.success());

    _logger.info(newState.runtimeType);

    emit(newState);
  }

  Future followUnfollow(int sourceIdOrFeedId) async {
    _logger.info("following/unfollowing");
    final follow = await _singleNewsHanlderRepository.followSourceOrFeed(
        sourceIdOrFeedId: sourceIdOrFeedId);

    final newState = follow.fold(
        (l) => SinglenewshandlerState.failure(failureMessage: l.failureMessage),
        (r) => SinglenewshandlerState.success());

    _logger.info(newState.runtimeType);
    emit(newState);
  }

  Future bookMark(int newsId) async {
    _logger.info("following/unfollowing");
    final follow = await _singleNewsHanlderRepository.bookMark(newsId: newsId);
    final newState = follow.fold(
        (l) => SinglenewshandlerState.failure(failureMessage: l.failureMessage),
        (r) => SinglenewshandlerState.success());

    _logger.info(newState.runtimeType);
    emit(newState);
  }

  Future bookMarkRemove(int newsId) async {
    _logger.info("following/unfollowing");
    final follow =
        await _singleNewsHanlderRepository.bookMarkRemove(newsId: newsId);

    final newState = follow.fold(
        (l) => SinglenewshandlerState.failure(failureMessage: l.failureMessage),
        (r) => SinglenewshandlerState.success());

    _logger.info(newState.runtimeType);
    emit(newState);
  }
}
