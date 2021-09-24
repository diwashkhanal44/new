import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/features/all_news/presentation/screens/blocs/cubit/newstopics_cubit.dart';
import 'package:you/features/category_wise_news/presentation/service/allnewscategories/unauthenticatednewscategories_cubit.dart';
import 'package:you/features/latest_news/presentation/service/cubit/latest_news_cubit.dart';

part 'localization_manager_event.dart';
part 'localization_manager_state.dart';

class LocalizationManagerBloc
    extends Bloc<LocalizationManagerEvent, LocalizationManagerState> {
  final SharedPreferences sharedPreferences;
  final _logger = Logger('LocalizationManagerBloc');

  LocalizationManagerBloc({required this.sharedPreferences})
      : super(LocalizationManagerState());

  @override
  Stream<LocalizationManagerState> mapEventToState(
    LocalizationManagerEvent event,
  ) async* {
    if (event is InitializeLocale) {
      yield LocalizationManagerState(
          locale: getSavedLocale(), initialized: true);

      _logger.info("InitializeLocale");
    }

    if (event is ChangeLocale) {
      yield LocalizationManagerState(locale: event.locale, initialized: true);
      _logger.info("ChangeLocale");

      await setLocale(event.locale);
      contentThatNeedsAnUpdateWhenChangingLanguage(
          event.context, event.locale.languageCode);
    }
  }

  /// Call This method Whenever the lanaguage changes
  /// this method only refresh the [App wrapper multiprovided bloc/cubit]
  contentThatNeedsAnUpdateWhenChangingLanguage(
      BuildContext context, String newLocale) {
    _logger.info("updating content according to language");
    // TODO
    //! ADD ALL THOSE WHICH NEWS UPDATE WHILE CHANGEING LANGAUGE
    //! DO NOT ADD BLOC-PROVIDER THAT ARE NOT IN THE SCOPE OF CONTEXT FROM WHICH THIS METHOD MIGHT GET CALLED

    BlocProvider.of<UnauthenticatednewscategoriesCubit>(context)
        .changeLanguage(langauge: newLocale);

    BlocProvider.of<LatestNewsCubit>(context)
        .changeLanguage(language: newLocale);

    BlocProvider.of<NewstopicsCubit>(context)
        .changeLanguage(langauge: newLocale);
  }

  Locale? getSavedLocale() {
    try {
      final locale = sharedPreferences.getString("locale");
      if (locale != null) {
        return Locale(locale);
      }
      return null;
    } catch (e) {
      _logger.warning("Could not get saved locale");
      return null;
    }
  }

  Future<bool> setLocale(Locale locale) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return await sharedPreferences.setString("locale", locale.languageCode);
  }
}
