import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveRichText.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
import 'package:you/core/utils/utils.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/calender/models/NepaliDate.dart';
import 'package:you/features/calender/presentations/cubits/calender_expand_collapse/calender_expand_collapse_cubit.dart';
import 'package:you/features/calender/presentations/cubits/calender_tithis/calender_tithis_cubit.dart';
import 'package:you/features/radios/presentations/cubits/favorite_radio/favorite_radio_cubit.dart';
import 'package:you/features/radios/presentations/cubits/radio_cubit/radio_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

class RadioAction extends StatelessWidget {
  const RadioAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<CalenderExpandCollapseCubit, bool>(
          builder: (context, state) {
            if (state) {
              return BlocBuilder<CalenderTithisCubit, CalenderTithisState>(
                builder: (context, calenderEventstate) {
                  return Container(
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .7),
                    child: AdaptiveRichText(
                        maxLines: 2,
                        textSpan: TextSpan(
                          children: [
                            TextSpan(text: "आज:"),
                            TextSpan(
                                children: [
                              "${BlocProvider.of<CalenderTithisCubit>(context).state.maybeMap(orElse: () => '', loaded: (loaded) {
                                    if (loaded.holidaysOrEvents?.data != null &&
                                        loaded.holidaysOrEvents!.data!
                                            .isNotEmpty) {
                                      final selectedDatedate = loaded
                                          .holidaysOrEvents?.data
                                          ?.where((element) =>
                                              element.date_np ==
                                              "${NepaliDate.now().year}-${NepaliDate.now().month}-${NepaliDate.now().day}");

                                      if (selectedDatedate != null &&
                                          selectedDatedate.isNotEmpty)
                                        return selectedDatedate
                                            .map((e) => e.name)
                                            .toList()
                                            .addInBetweenElements('|')
                                            .toString()
                                            .replaceAll(",", '')
                                            .replaceAll("/", '\n')
                                            .replaceAll("[", '')
                                            .replaceAll("]", '');
                                      else
                                        return 'N/A';
                                    }
                                    return 'N/A';
                                  })}",
                            ].map((e) => TextSpan(text: e)).toList()),
                          ],
                        ),
                        textStyle:
                            Theme.of(context).textTheme.subtitle1!.copyWith(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                        textAlign: TextAlign.right),
                  );
                },
              );
            } else
              return BlocBuilder<RadioCubit, RadioState>(
                builder: (context, state) {
                  return BlocBuilder<FavoriteRadioCubit, FavoriteRadioState>(
                    builder: (context, favstate) {
                      favstate.maybeMap(
                          initial: (initial) {
                            if (BlocProvider.of<AuthCubit>(context).state
                                is Authenticated)
                              BlocProvider.of<FavoriteRadioCubit>(context)
                                  .getFavorite();
                          },
                          loaded: (loaded) {},
                          orElse: () {});

                      String? getString() {
                        if (state is Paused) {
                          return favstate.maybeMap(
                              orElse: () {},
                              loaded: (loaded) {
                                if (loaded.favoriteRadiosModel.data!.isNotEmpty)
                                  return loaded
                                      .favoriteRadiosModel.data!.first.name;
                                else {
                                  return "Select Your favorite radio";
                                }
                              });
                        } else if (state is Playing) {
                          return state.currentStationid.name;
                        }
                      }

                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AdaptiveText(
                            getString() != "Select Your favorite radio"
                                ? "Your Radio "
                                : '',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                          ),
                          AdaptiveText(
                            getString() ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor: Colors.red,
            child: BlocBuilder<RadioCubit, RadioState>(
              builder: (context, state) {
                return BlocBuilder<FavoriteRadioCubit, FavoriteRadioState>(
                  builder: (context, favstate) {
                    favstate.maybeMap(
                        initial: (initial) {
                          if (BlocProvider.of<AuthCubit>(context).state
                              is Authenticated)
                            BlocProvider.of<FavoriteRadioCubit>(context)
                                .getFavorite();
                        },
                        loaded: (loaded) {},
                        orElse: () {});
                    return IconButton(
                      icon: Icon(
                        (state is Paused) ? Icons.play_arrow : Icons.pause,
                      ),
                      onPressed: () {
                        if (state is Paused) {
                          favstate.maybeMap(
                              orElse: () {},
                              loaded: (loaded) {
                                if (loaded.favoriteRadiosModel.data!.isNotEmpty)
                                  BlocProvider.of<RadioCubit>(context)
                                      .changeUrl(loaded
                                          .favoriteRadiosModel.data!.first);
                                else {
                                  AutoRouter.of(context).push(RadioListing());
                                }
                              });
                        } else
                          BlocProvider.of<RadioCubit>(context).pauseRadio();
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
