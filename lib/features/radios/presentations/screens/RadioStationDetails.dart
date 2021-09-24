import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/features/radios/models/RadiosModel.dart';
import 'package:you/features/radios/presentations/cubits/radio_cubit/radio_cubit.dart';

class RadioStationDetails extends StatelessWidget {
  final Datum station;
  const RadioStationDetails({Key? key, required this.station})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioCubit, RadioState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(station.name ?? ''),
          ),
          body: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                station.old_logo ?? defaultNewsProviderImageUrl,
                                fit: BoxFit.cover,
                                height: 100,
                                errorBuilder: (context, _, __) {
                                  return Image.network(
                                      defaultNewsProviderImageUrl,
                                      fit: BoxFit.cover);
                                },
                              ),
                            ),
                          ),
                        ),
                        Text(station.name!,
                            style: Theme.of(context).textTheme.headline6),
                        SizedBox(height: 10),
                        Text(
                            "${station.frequency!.isEmpty ? "MHz" : "${station.frequency}"}",
                            style: Theme.of(context).textTheme.headline5),
                        SizedBox(height: 10),
                        Stack(
                          children: [
                            Container(
                              height: 2,
                              width: 400,
                              color: Theme.of(context).primaryColor,
                            ),
                            Positioned(right: 0, child: CircleAvatar(radius: 3))
                          ],
                        ),
                        SizedBox(height: 10),
                        CircleAvatar(
                            radius: 30,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: IconButton(
                                onPressed: () async {
                                  if (state is Playing) {
                                    if (state.currentStationid.id == station.id)
                                      BlocProvider.of<RadioCubit>(context)
                                          .pauseRadio();
                                    else {
                                      BlocProvider.of<RadioCubit>(context)
                                          .changeUrl(station);
                                    }
                                  } else {
                                    BlocProvider.of<RadioCubit>(context)
                                        .changeUrl(station);
                                  }
                                },
                                icon: Icon((state is Playing)
                                    ? state.currentStationid.id != station.id
                                        ? Icons.play_arrow
                                        : Icons.pause
                                    : Icons.play_arrow))),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
