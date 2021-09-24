import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/app_localization.dart';
import 'package:you/routes/auto_router.gr.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:you/routes/route_guards.dart';
import 'features/localization_manager/bloc/localization_manager_bloc.dart';
import 'features/theme_manager/bloc/theme_manager_bloc.dart';
import 'features/theme_manager/data/dark_theme_data.dart';
import 'features/theme_manager/data/light_theme_data.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class YouApp extends StatefulWidget {
  @override
  _YouAppState createState() => _YouAppState();
}

class _YouAppState extends State<YouApp> {
  late final _appRouter;
  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(authenticatedGuard: AuthenticatedGuard(context));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeManagerBloc, ThemeMode?>(
      builder: (context, themeState) {
        if (themeState == null)
          BlocProvider.of<ThemeManagerBloc>(context).add(Init());

        return BlocBuilder<LocalizationManagerBloc, LocalizationManagerState>(
          builder: (context, localeState) {
            if (localeState.initialized == false)
              BlocProvider.of<LocalizationManagerBloc>(context)
                  .add(InitializeLocale());

            return 
              MaterialApp.router(
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('en', 'US'), // English
                const Locale('ne', 'NP'), // nepali
              ],
              locale: localeState.locale,
              themeMode: themeState,
              darkTheme: DarkTheme()(),
              theme: LightTheme()(),
              builder: BotToastInit(),
              title: "You App",
              routerDelegate: _appRouter.delegate(
                  navigatorObservers: () =>
                      <NavigatorObserver>[BotToastNavigatorObserver()]),
              routeInformationParser: _appRouter.defaultRouteParser(),
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}
