import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:you/core/shared_widgets/shared_widget.dart';
import 'package:you/features/weather/presentations/blocs/cubit/weather_cubit.dart';

class WeatherInfoHomeWidget extends HookWidget {
  const WeatherInfoHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTempUnitCelsius = useState(true);

    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        double? tempInCelsius;
        String? city;

        IconData iconData = Meteocons.cloud_sun_inv;
        state.map(
            initial: (initial) =>
                BlocProvider.of<WeatherCubit>(context).fetch(),
            loading: (loading) {},
            loaded: (loaded) {
              city = loaded.city;
              tempInCelsius = loaded.temp;
              iconData = loaded.icon;
            },
            failed: (failed) {});

        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 25,
              width: 25,
              child: Icon(
                iconData,
                size: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
                (tempInCelsius == null)
                    ? " "
                    : isTempUnitCelsius.value
                        ? tempInCelsius!.toInt().toString()
                        : _calculateFahrenheitFromCelsius(tempInCelsius!)
                            .toInt()
                            .toString(),
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white, fontSize: 25, height: 1.3)),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    isTempUnitCelsius.value = !isTempUnitCelsius.value;
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "°C",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 12,
                                  color: isTempUnitCelsius.value
                                      ? Colors.white
                                      : Colors.white60,
                                  height: 1),
                        ),
                        TextSpan(
                          text: " | ",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Colors.white60,
                                    height: 1,
                                    fontSize: 12,
                                  ),
                        ),
                        TextSpan(
                          text: "°F",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: !isTempUnitCelsius.value
                                      ? Colors.white
                                      : Colors.white60,
                                  fontSize: 12,
                                  height: 1),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: AdaptiveText(
                    city ?? "N/A",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Colors.white,
                          height: 1,
                          fontSize: 12,
                        ),
                  ),
                )
              ],
            ),
          ],
        );
      },
    );
  }

  double _calculateFahrenheitFromCelsius(double celsius) {
    return (celsius * 1.8) + 32;
  }

  double _calculateCelsiusFromFahrenheit(double fahrenheit) {
    return (fahrenheit - 32) / 1.8;
  }
}
