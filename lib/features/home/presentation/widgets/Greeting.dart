import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/home/presentation/blocs/timer_Cubit/timer_cubit.dart';

class Greeting extends StatelessWidget {
  const Greeting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Image.network(
                      BlocProvider.of<AuthCubit>(context).state is Authenticated
                          ? (BlocProvider.of<AuthCubit>(context)
                                  .state
                                  .userProfile
                                  ?.data
                                  ?.profile_photo ??
                              defaultNewsProviderImageUrl)
                          : defaultNewsProviderImageUrl),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 100),
                      child: Text(
                          (BlocProvider.of<AuthCubit>(context).state
                                  is Authenticated)
                              ? "Hi ${(BlocProvider.of<AuthCubit>(context).state.userProfile?.data?.name ?? "Stranger").split(' ')[0]}"
                              : "Hi Stranger",
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    fontSize: 18,
                                  )),
                    ),
                    Container(
                      child: BlocProvider(
                        create: (context) => TimerCubit(),
                        child: BlocBuilder<TimerCubit, TimerState>(
                          builder: (context, state) {
                            if (state is InitState)
                              BlocProvider.of<TimerCubit>(context).initTimer();

                            return Row(children: [
                              AdaptiveText(
                                "${AppLocalizations.of(context)!.good} ${getPartOfTheDay(context, state.dateTime)}! it's",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(fontSize: 14),
                              ),
                              AdaptiveText(
                                " ${getTime(state.dateTime)}",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                            ]);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getTime(DateTime time) {
    return "${(time.hour - 12) <= 0 ? time.hour : (time.hour - 12)}: ${time.minute} ${(time.hour - 12) < 0 ? "AM" : "PM"}";
  }

  String getPartOfTheDay(BuildContext context, DateTime time) {
    if (time.hour >= 21)
      return AppLocalizations.of(context)!.night;
    else if (time.hour >= 17)
      return AppLocalizations.of(context)!.evening;
    else if (time.hour >= 12)
      return AppLocalizations.of(context)!.afternoon;
    else if (time.hour >= 5)
      return AppLocalizations.of(context)!.morning;
    else
      return AppLocalizations.of(context)!.night;
  }
}
