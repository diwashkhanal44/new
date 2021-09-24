import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:you/app_localization.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/localization_manager/bloc/localization_manager_bloc.dart';
import 'package:you/features/radios/presentations/cubits/radio_cubit/radio_cubit.dart';
import 'package:you/features/theme_manager/bloc/theme_manager_bloc.dart';
import 'package:you/routes/auto_router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageDrawer extends StatefulWidget {
  HomePageDrawer();

  @override
  _HomePageDrawerState createState() => _HomePageDrawerState();
}

class _HomePageDrawerState extends State<HomePageDrawer> {
  bool isSwitched = false;
  bool value = false;

  getAllSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isSwitched = prefs.getBool('isSwitched') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).textTheme.bodyText2?.color,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      ),
      body: ListView(
        children: [
          ListTile(
            leading:
                Icon(Icons.person, color: Theme.of(context).iconTheme.color),
            onTap: () => AutoRouter.of(context).push(ProfileScreen()),
            title: Text(
              "Profile",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          SwitchListTile(
            activeTrackColor: Colors.white54,
            inactiveTrackColor: Colors.black,
            activeColor: Colors.white54,
            title: Text(
              'Dark Mode ',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                //SharedPreferences prefs = await SharedPreferences.getInstance();
                //prefs.setBool('isSwitched', value);
              });
              Theme.of(context).brightness == Brightness.dark
                  ? BlocProvider.of<ThemeManagerBloc>(context)
                      .add(ChangeThemeMode(themeMode: ThemeMode.light))
                  : BlocProvider.of<ThemeManagerBloc>(context)
                      .add(ChangeThemeMode(themeMode: ThemeMode.dark));
            },
            secondary: Icon(
                Theme.of(context).brightness == Brightness.dark
                    ? Icons.brightness_2_rounded
                    : Icons.brightness_2_outlined,
                color: Theme.of(context).iconTheme.color),
          ),
          /*
          ListTile(
            leading: Icon(
                Theme.of(context).brightness == Brightness.dark
                    ? Icons.brightness_2_rounded
                    : Icons.brightness_2_outlined,
                color: Theme.of(context).iconTheme.color),
            onTap: () {
              Theme.of(context).brightness == Brightness.dark
                  ? BlocProvider.of<ThemeManagerBloc>(context)
                      .add(ChangeThemeMode(themeMode: ThemeMode.light))
                  : BlocProvider.of<ThemeManagerBloc>(context)
                      .add(ChangeThemeMode(themeMode: ThemeMode.dark));
            },
            trailing: InkWell(
              onTap: () => BlocProvider.of<ThemeManagerBloc>(context)
                  .add(ChangeThemeMode(themeMode: ThemeMode.system)),
              child: Text(
                "Reset",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            title: Text(
              "Toggle Dark Mode",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          */
          ListTile(
            leading: Icon(Icons.translate_outlined,
                color: Theme.of(context).iconTheme.color),
            trailing: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: BlocProvider.of<LocalizationManagerBloc>(context)
                        .state
                        .locale ??
                    Locale('en'),
                onChanged: (Locale? locale) {
                  BlocProvider.of<LocalizationManagerBloc>(context).add(
                    ChangeLocale(locale: locale!, context: context),
                  );
                },
                items: AppLocalizations.supportedLocales
                    .map(
                      (e) => DropdownMenuItem<Locale>(
                        child: Text(
                          e.toString(),
                        ),
                        value: e,
                      ),
                    )
                    .toList(),
              ),
            ),
            title: Text(
              "Change Preffered Language",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Divider(height: 1),
          ListTile(
            leading: Icon(Icons.book, color: Theme.of(context).iconTheme.color),
            onTap: () => AutoRouter.of(context)
                .push(AllUtilsWrapper(children: [NotesScreen()])),
            title: Text("Your notes",
                style: Theme.of(context).textTheme.bodyText2),
          ),
          Divider(),
          if (!(BlocProvider.of<AuthCubit>(context).state is Authenticated))
            ListTile(
              leading:
                  Icon(Icons.login, color: Theme.of(context).iconTheme.color),
              onTap: () async {
                await AutoRouter.of(context).push(LoginScreen());
                Navigator.of(context).pop();
              },
              title:
                  Text("Login", style: Theme.of(context).textTheme.bodyText2),
            )
          else
            ListTile(
              leading:
                  Icon(Icons.login, color: Theme.of(context).iconTheme.color),
              onTap: () => {
                BlocProvider.of<AuthCubit>(context).logout(),
                BlocProvider.of<RadioCubit>(context).pauseRadio(),
                Navigator.of(context).pop()
              },
              title:
                  Text("Logout", style: Theme.of(context).textTheme.bodyText2),
            )
        ],
      ),
    );
  }
}
