import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/core/shared_widgets/builder_widgets/ComingSoon.dart';
import 'package:you/core/shared_widgets/shared_widget.dart';
import 'package:you/features/calender/presentations/CalenderShutter.dart';
import 'package:you/features/calender/presentations/cubits/calender_expand_collapse/calender_expand_collapse_cubit.dart';
import 'package:you/features/home/presentation/widgets/Drawer.dart';
import 'package:you/features/home/presentation/widgets/HomeHeading.dart';
import 'package:you/features/home/presentation/widgets/HomePageWidgets.dart';
import 'package:you/routes/auto_router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    checkIfFirstTime();
  }

  checkIfFirstTime() async {
    if (!sl<SharedPreferences>().containsKey("firstTime")) {
      SchedulerBinding.instance!.addPostFrameCallback((timeStamp) async {
        await AutoRouter.of(context).push(PersonalizationScreen());
        await AutoRouter.of(context).push(LoginScreen());
      });
    }

    // // ! TODO: remove these 2 lines while in production
    // sl<SharedPreferences>().clear();
    // sl<FlutterSecureStorage>().deleteAll();
  }

  Future<void> refreshHome(BuildContext context) async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalenderExpandCollapseCubit(),
      child: Scaffold(
        //appBar: AppBar(
        // leading: HomePageDrawer(),
        //actions: [
        // Greeting(),
        // ],
        //),
        drawer: HomePageDrawer(),
        body: NestedScrollView(
          clipBehavior: Clip.none,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                  pinned: false,
                  elevation: 0,
                  leading: IconButton(
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                  floating: true,
                  flexibleSpace: Container(
                    color: Theme.of(context).primaryColor,
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                  forceElevated: innerBoxIsScrolled,
                  actions: [RadioAction()]),
            ];
          },
          body: buildHomePageBody(context),
        ),
      ),
    );
  }

  RefreshIndicator buildHomePageBody(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => await refreshHome(context),
      child: ScrollConfiguration(
        behavior: NoGlow(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeading(),
              SizedBox(height: 12),
              CalenderShutter(),
              SizedBox(height: 12),
              HomeWidgets(),
              SizedBox(height: 12),
              HorizontalCarouselNews(),
              SizedBox(height: 12),
              HomeReOrderAbleWidgets(),
              SizedBox(height: 12),
              HomeVideosList(),
              SizedBox(height: 12),
              // FullSizeNewsCard(),
              SizedBox(height: 12),
              // VerticalHalfSizeNewsCard(),
              SizedBox(height: 12),
              UtilitiesWidgets(),
              SizedBox(height: 12),
              TrendingNews(),
            ],
          ),
        ),
      ),
    );
  }
}
