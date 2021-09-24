import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:you/features/radios/models/FavoriteRadioModel/FavoriteRadiosModel.dart';
import 'package:you/features/radios/services/RadioServices.dart';

part 'favorite_radio_state.dart';
part 'favorite_radio_cubit.freezed.dart';

class FavoriteRadioCubit extends Cubit<FavoriteRadioState> {
  FavoriteRadioCubit(RadioServices radioServices)
      : _radioServices = radioServices,
        super(FavoriteRadioState.initial());

  final RadioServices _radioServices;
  final Logger _logger = Logger("FavoriteRadioCubit");

  toggleFavorite(int stationId) async {
    final toggleFavorite = await _radioServices.toggleFavoriteRadio(stationId);

    toggleFavorite.fold((l) => _logger.severe(l),
        (r) => _logger.info(" $stationId ${r.message}"));

    getFavorite();
  }

  getFavorite() async {
    final favoriteRadios = await _radioServices.getFavoriteRadioStation();
    favoriteRadios.fold((l) => _logger.severe(l),
        (r) => emit(FavoriteRadioState.loaded(favoriteRadiosModel: r)));
  }
}
