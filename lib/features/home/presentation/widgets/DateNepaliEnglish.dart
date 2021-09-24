import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:you/core/shared_widgets/shared_widget.dart' show AdaptiveText;
import 'package:you/features/calender/models/NepaliDate.dart';
import 'package:you/features/calender/presentations/cubits/calender_tithis/calender_tithis_cubit.dart';
import 'package:you/core/utils/utils.dart';

import '../../../weather/presentations/screens/WeatherInfoHomeWidget.dart';

class DateNepaliEnglish extends StatelessWidget {
  const DateNepaliEnglish({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalenderTithisCubit, CalenderTithisState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeatherInfoHomeWidget(),
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.topCenter,
                  child: AdaptiveText(
                    "${NepaliDateFormat.yMMMMEEEEd(Language.nepali).format(NepaliDate.now())}",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(height: 1, color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
            AdaptiveText(
              "${DateFormat.yMMMEd().format(DateTime.now())} | ${BlocProvider.of<CalenderTithisCubit>(context).state.maybeMap(orElse: () => '', loaded: (loaded) {
                    if (loaded.tithis?.data != null &&
                        loaded.tithis!.data!.isNotEmpty) {
                      final selectedDatedate = loaded.tithis?.data?.where((element) =>
                          "${element.year}-${element.month}-${element.day}" ==
                          "${NepaliDate.now().year}-${NepaliDate.now().month}-${NepaliDate.now().day}");
                      if (selectedDatedate != null &&
                          selectedDatedate.isNotEmpty)
                        return selectedDatedate
                            .map((e) => e.lunar_day)
                            .toList()
                            .addInBetweenElements(' ')
                            .toString()
                            .replaceAll("[", '')
                            .replaceAll("]", '');
                      else
                        return ' ';
                    }
                    return ' ';
                  })}",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.white, fontSize: 12),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 95,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "${BlocProvider.of<CalenderTithisCubit>(context).state.maybeMap(orElse: () => '', loaded: (loaded) {
                        if (loaded.tithis?.data != null &&
                            loaded.tithis!.data!.isNotEmpty) {
                          final selectedDatedate = loaded.tithis?.data?.where(
                              (element) =>
                                  "${element.year}-${element.month}-${element.day}" ==
                                  "${NepaliDate.now().year}-${NepaliDate.now().month}-${NepaliDate.now().day}");
                          if (selectedDatedate != null &&
                              selectedDatedate.isNotEmpty)
                            return selectedDatedate
                                .map((e) => e.lunar_day)
                                .toList()
                                .addInBetweenElements('|')
                                .toString()
                                .replaceAll("[", '')
                                .replaceAll("]", '');
                          else
                            return ' ';
                        }
                        return ' ';
                      })}",
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
