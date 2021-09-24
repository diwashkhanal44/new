import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:you/core/shared_widgets/builder_widgets/NoGlowScrollBehaviour.dart';

import 'YouApp.dart';
import 'config/service_locator.dart';
import 'core/logger/logger.dart';
import 'features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'features/localization_manager/bloc/localization_manager_bloc.dart';
import 'features/theme_manager/bloc/theme_manager_bloc.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';

Future<void> appInitialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();
  // initiate service locator
  await initServiceLocator();

  // initialize logging
  initLogging();
}

void main() async {
  await appInitialize();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<ThemeManagerBloc>()),
        BlocProvider(create: (context) => sl<LocalizationManagerBloc>()),
        BlocProvider(create: (context) => sl<AuthCubit>())
      ],
      child: YouApp(),
    ),
  );
}
