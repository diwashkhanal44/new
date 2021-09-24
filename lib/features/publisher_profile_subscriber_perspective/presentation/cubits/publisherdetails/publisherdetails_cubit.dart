import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/models/PublisherDetails/PublisherDetails.dart';
import 'package:you/features/publisher_profile_subscriber_perspective/repositories/PublisherRepository.dart';

part 'publisherdetails_state.dart';
part 'publisherdetails_cubit.freezed.dart';

class PublisherdetailsCubit extends Cubit<PublisherdetailsState> {
  final _logger = Logger('PublisherdetailsCubit');
  final PublisherRepository _repository;
  PublisherdetailsCubit({required PublisherRepository repository})
      : _repository = repository,
        super(PublisherdetailsState.initial());

  void getPublisherDetails(int publisherId) async {
    emit(PublisherdetailsState.loading());

    final publisherDetails =
        await _repository.gerPublisherDetails(publisherId: publisherId);

    publisherDetails.fold(
        (l) => {
              _logger.severe(l.failureMessage),
              emit(PublisherdetailsState.failed(
                  failureMessage: l.failureMessage))
            },
        (r) => {
              _logger.info('publisher details loaded'),
              emit(PublisherdetailsState.loaded(publisherDetails: r))
            });
  }
}
