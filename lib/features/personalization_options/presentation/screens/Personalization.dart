import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/localization_manager/bloc/localization_manager_bloc.dart';
import 'package:you/features/category_wise_news/models/NewsCategory.dart'
    as newsCategory;
import 'package:you/features/category_wise_news/presentation/service/allnewscategories/unauthenticatednewscategories_cubit.dart';
import 'package:you/features/news_sources/models/NewsSourceModel.dart'
    as newsSources;
import 'package:you/features/news_sources/presentation/news_sources/newssources_cubit.dart';
import 'package:you/features/news_language/presentation/cubit/news_languages_cubit.dart';

import '../../../../app_localization.dart';

final _outlinedButtonStyle = ButtonStyle(
    shape: MaterialStateProperty.resolveWith((states) =>
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))));

class PersonalizationScreen extends HookWidget {
  const PersonalizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initPortals = useState(false);
    final initCats = useState(false);

    final selectedPortals = useState<List<newsSources.Datum>>([]);
    final selectedCategories = useState<List<newsCategory.Datum>>([]);
    final selectedLanguage = useState<String?>('en');

    if (initPortals.value == false) {
      initPortals.value = true;

      final localPortals =
          sl<SharedPreferences>().getStringList("newsProviders");
      if (localPortals != null) {
        selectedPortals.value = List<newsSources.Datum>.from(localPortals
            .map((element) => newsSources.Datum.fromJson(jsonDecode(element))));
      }

      //TODO: Remote intialize if authenticated

    }
    if (initCats.value == false) {
      initCats.value = true;
      final localCat =
          sl<SharedPreferences>().getStringList("choosedCategories");
      if (localCat != null) {
        selectedCategories.value = List<newsCategory.Datum>.from(localCat.map(
            (element) => newsCategory.Datum.fromJson(jsonDecode(element))));
      }

      //TODO: Remote intialize if authenticated

    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Text("Choose your preferences"),
        actions: [
          TextButton(
              onPressed: () async => {AutoRouter.of(context).pop()},
              child: Text("Skip"))
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              ListTile(
                title: Text("Choose your prefered language:"),
                subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _SelectedLanguage(
                      selectedlanguage: selectedLanguage,
                    )),
              ),
              ListTile(
                title: Text("Choose news providers to follow:"),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _SelectedPortal(selectedPortals: selectedPortals),
                ),
              ),
              ListTile(
                title: Text("Choose your prefered categories of news:"),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      _SelectedCategory(selectedCategories: selectedCategories),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).pop();

                  //TODO make bloc for saving and getting choosed categories and news providers

                  sl<SharedPreferences>().setStringList(
                    "choosedCategories",
                    selectedCategories.value.reversed
                        .map((e) => jsonEncode(e.toJson()))
                        .toList(),
                  );
                  sl<SharedPreferences>().setStringList(
                    "newsProviders",
                    selectedPortals.value.reversed
                        .map((e) => jsonEncode(e.toJson()))
                        .toList(),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Done"),
                ),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.resolveWith((states) => 4),
                    foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white),
                    shape: MaterialStateProperty.resolveWith((states) =>
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Theme.of(context).primaryColor)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SelectedLanguage extends StatelessWidget {
  const _SelectedLanguage({
    Key? key,
    required this.selectedlanguage,
  }) : super(key: key);

  final ValueNotifier<String?> selectedlanguage;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsLanguagesCubit, NewsLanguagesState>(
        builder: (context, state) {
      return state.map(
          initial: (initial) {
            BlocProvider.of<NewsLanguagesCubit>(context).fetch();

            return Center(child: CircularProgressIndicator(strokeWidth: 1));
          },
          loading: (loading) =>
              Center(child: CircularProgressIndicator(strokeWidth: 1)),
          failed: (failed) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(failed.failureMessage),
                    SizedBox(height: 10),
                    TextButton.icon(
                        onPressed: () =>
                            BlocProvider.of<NewsLanguagesCubit>(context)
                                .fetch(),
                        icon: Icon(Icons.refresh_outlined),
                        label: Text("Try Again"))
                  ],
                ),
              ),
          loaded: (loaded) {
            if (selectedlanguage.value == null) selectedlanguage.value = 'en';

            return Wrap(
                alignment: WrapAlignment.start,
                spacing: 20,
                runSpacing: 0,
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.start,
                children: loaded.newsnewsLanguages.data!
                    .map(
                      (e) => Stack(
                        children: [
                          OutlinedButton(
                            style: _outlinedButtonStyle,
                            onPressed: () {
                              selectedlanguage.value = e.language_code;

                              BlocProvider.of<
                                          UnauthenticatednewscategoriesCubit>(
                                      context)
                                  .changeLanguage(
                                      langauge: e.language_code ?? 'en');

                              BlocProvider.of<LocalizationManagerBloc>(context)
                                  .add(ChangeLocale(
                                      context: context,
                                      locale: Locale(e.language_code ?? 'en')));
                            },
                            child: Text(
                              "${e.name}",
                              style: TextStyle(
                                  color:
                                      selectedlanguage.value == e.language_code
                                          ? Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? Colors.black
                                              : Colors.white
                                          : Theme.of(context).brightness ==
                                                  Brightness.light
                                              ? Colors.black45
                                              : Colors.white60),
                            ),
                          ),
                          if (selectedlanguage.value == e.language_code)
                            Positioned(
                              top: 4,
                              right: 20,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffd99435),
                                radius: 6,
                                child: Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                            )
                        ],
                      ),
                    )
                    .toList());
          });
    });
  }
}

class _SelectedCategory extends StatelessWidget {
  const _SelectedCategory({
    Key? key,
    required this.selectedCategories,
  }) : super(key: key);

  final ValueNotifier<List<newsCategory.Datum>> selectedCategories;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnauthenticatednewscategoriesCubit,
        UnauthenticatednewscategoriesState>(
      builder: (context, state) {
        return state.map(
          initial: (initial) {
            BlocProvider.of<UnauthenticatednewscategoriesCubit>(context)
                .fetch(langauge: AppLocalizations.of(context)!.localeName);
            return Center(child: CircularProgressIndicator(strokeWidth: 1));
          },
          loading: (loading) =>
              Center(child: CircularProgressIndicator(strokeWidth: 1)),
          failed: (failed) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(failed.failureMessage),
                SizedBox(height: 10),
                TextButton.icon(
                    onPressed: () => BlocProvider.of<
                            UnauthenticatednewscategoriesCubit>(context)
                        .fetch(
                            langauge: AppLocalizations.of(context)!.localeName),
                    icon: Icon(Icons.refresh_outlined),
                    label: Text("Try Again"))
              ],
            ),
          ),
          loaded: (loaded) => Wrap(
            alignment: WrapAlignment.start,
            spacing: 20,
            runSpacing: 0,
            crossAxisAlignment: WrapCrossAlignment.start,
            runAlignment: WrapAlignment.start,
            children: loaded.newsCategory.data
                .map(
                  (e) => Stack(
                    children: [
                      OutlinedButton(
                        style: _outlinedButtonStyle,
                        onPressed: () {
                          if (selectedCategories.value.contains(e))
                            selectedCategories.value.remove(e);
                          else
                            selectedCategories.value.add(e);

                          var pre = selectedCategories.value.toSet();
                          selectedCategories.value = pre.toList();
                        },
                        child: Text(
                          e.name ?? 'N/A',
                          style: TextStyle(
                              color: selectedCategories.value.contains(e)
                                  ? Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.black
                                      : Colors.white
                                  : Theme.of(context).brightness ==
                                          Brightness.light
                                      ? Colors.black45
                                      : Colors.white60),
                        ),
                      ),
                      if (selectedCategories.value.contains(e))
                        Positioned(
                          top: 4,
                          right: 20,
                          child: CircleAvatar(
                            backgroundColor: Color(0xffd99435),
                            radius: 6,
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 10,
                            ),
                          ),
                        )
                    ],
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}

class _SelectedPortal extends StatelessWidget {
  const _SelectedPortal({
    Key? key,
    required this.selectedPortals,
  }) : super(key: key);

  final ValueNotifier<List<newsSources.Datum>> selectedPortals;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewssourcesCubit, NewssourcesState>(
        builder: (context, state) {
      return state.map(
          initial: (initial) {
            BlocProvider.of<NewssourcesCubit>(context).fetch();
            return Center(child: CircularProgressIndicator(strokeWidth: 1));
          },
          loading: (loading) =>
              Center(child: CircularProgressIndicator(strokeWidth: 1)),
          failure: (failed) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(failed.failureMessage),
                    SizedBox(height: 10),
                    TextButton.icon(
                        onPressed: () =>
                            BlocProvider.of<NewssourcesCubit>(context).fetch(),
                        icon: Icon(Icons.refresh_outlined),
                        label: Text("Try Again"))
                  ],
                ),
              ),
          loaded: (loaded) {
            return Wrap(
              alignment: WrapAlignment.start,
              spacing: 20,
              runSpacing: 0,
              crossAxisAlignment: WrapCrossAlignment.start,
              runAlignment: WrapAlignment.start,
              children: List.from(
                loaded.allNewsSources.data!.map(
                  (e) => Stack(
                    children: [
                      OutlinedButton(
                        style: _outlinedButtonStyle,
                        onPressed: () {
                          if (selectedPortals.value.contains(e))
                            selectedPortals.value.remove(e.id);
                          else
                            selectedPortals.value.add(e);

                          var pre = selectedPortals.value.toSet();
                          selectedPortals.value = pre.toList();
                        },
                        child: Opacity(
                          opacity: selectedPortals.value.contains(e) ? 1 : .7,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                e.logo ?? defaultNewsProviderImageUrl,
                                height: 30,
                                scale: .5,
                                fit: BoxFit.fitHeight,
                              ),
                              Text("${e.name}"),
                            ],
                          ),
                        ),
                      ),
                      if (selectedPortals.value.contains(e))
                        Positioned(
                          top: 4,
                          right: 20,
                          child: CircleAvatar(
                            backgroundColor: Color(0xffd99435),
                            radius: 6,
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 10,
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
            );
          });
    });
  }
}
