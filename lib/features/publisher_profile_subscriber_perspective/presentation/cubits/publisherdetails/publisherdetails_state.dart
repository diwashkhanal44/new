part of 'publisherdetails_cubit.dart';

@freezed
abstract class PublisherdetailsState with _$PublisherdetailsState {
  const factory PublisherdetailsState.initial() = _Initial;
  const factory PublisherdetailsState.loading() = _Loading;
  const factory PublisherdetailsState.loaded(
      {required PublisherDetails publisherDetails}) = _Loaded;
  const factory PublisherdetailsState.failed({required String failureMessage}) =
      _Failure;
}
