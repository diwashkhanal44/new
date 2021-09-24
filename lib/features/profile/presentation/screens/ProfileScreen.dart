import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you/config/service_locator.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/profile/presentation/widgets/activity_list.dart';
import 'package:you/features/profile/presentation/widgets/saved_news.dart';
import 'package:you/routes/auto_router.gr.dart';

import '../../../../app_localization.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final TabController controller;

  late final ScrollController scrollController;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return NestedScrollView(
      controller: scrollController,
      floatHeaderSlivers: true,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            titleSpacing: 0.0,
            toolbarHeight: 150,
            pinned: true,
            elevation: 0,
            floating: true,
            snap: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness:
                  Theme.of(context).brightness == Brightness.dark
                      ? Brightness.light
                      : Brightness.dark,
            ),
            foregroundColor: Theme.of(context).textTheme.bodyText2?.color,
            forceElevated: innerBoxIsScrolled,
            backwardsCompatibility: true,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BackButton(),
                          TextButton.icon(
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateColor.resolveWith(
                                          (states) => Colors.white)),
                              onPressed: () async {
                                final categoryChoosed = sl<SharedPreferences>()
                                    .get("choosedCategories");

                                final providerChoosed = sl<SharedPreferences>()
                                    .get("newsProviders");

                                if (categoryChoosed == null ||
                                    providerChoosed == null)
                                  await AutoRouter.of(context)
                                      .push(PersonalizationScreen());

                                AutoRouter.of(context).push(YourInterestHome());
                              },
                              icon: Icon(
                                Icons.add_circle,
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              label: Text(
                                AppLocalizations.of(context)!.yourChoice,
                                style: TextStyle(
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black),
                              )),
                        ],
                      ),
                      SizedBox(height: 10),
                      ListTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    (BlocProvider.of<AuthCubit>(context)
                                                .state
                                                .userProfile
                                                ?.data
                                                ?.profile_photo !=
                                            null)
                                        ? NetworkImage(
                                            BlocProvider.of<AuthCubit>(context)
                                                .state
                                                .userProfile!
                                                .data!
                                                .profile_photo!)
                                        : null),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  BlocProvider.of<AuthCubit>(context)
                                          .state
                                          .userProfile
                                          ?.data
                                          ?.name ??
                                      "",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                Text(
                                  "@${(BlocProvider.of<AuthCubit>(context).state.userProfile?.data?.username ?? '')}",
                                  style: Theme.of(context).textTheme.bodyText2,
                                )
                              ],
                            ),
                          ],
                        ),
                        trailing: PopupMenuButton(
                          onSelected: (value) {
                            if (value == 'edit') {
                              // goto edit profile

                              AutoRouter.of(context).push(ProfileEdit());
                            }
                          },
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                child: Text("Edit Profile"),
                                value: "edit",
                              )
                            ];
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 8,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.black26
                      : Colors.grey[200],
                  width: MediaQuery.of(context).size.width,
                  child: Text(""),
                )
              ],
            ),
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(48),
              child: TabBar(
                controller: controller,
                isScrollable: true,
                tabs: [
                  Tab(text: "Saved"),
                  Tab(text: "Activity"),
                ],
              ),
            ),
          ),
        ];
      },
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            controller: controller,
            children: [
              SavedNewsScreen(scrollController: scrollController),
              ActivityLogsScreen(scrollController: scrollController),
              // Text("Followed Source"),
              // Text("Followed Source"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
