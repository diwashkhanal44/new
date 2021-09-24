import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/radios/models/RadiosModel.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioState> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  RadioCubit() : super(Paused());

  String lastStreamUrl = '';

  void _playRadio(Datum station) async {
    if (lastStreamUrl != station.live_link!) {
      lastStreamUrl = station.live_link!;
      await assetsAudioPlayer.open(
          Audio.liveStream(
            "${station.live_link}",
            metas: Metas(
              title: station.name,
              artist: station.name,
              album: "${station.frequency}",
              image: MetasImage.network(station.old_logo ??
                  defaultNewsProviderImageUrl), //can be MetasImage.network
            ),
          ),
          showNotification: true,
          autoStart: false);
    }

    assetsAudioPlayer.play();
    emit(Playing(currentStationid: station));
  }

  void pauseRadio() {
    assetsAudioPlayer.pause();
    emit(Paused());
  }

  void changeUrl(Datum station) {
    assetsAudioPlayer.stop();
    _playRadio(station);
  }
}
