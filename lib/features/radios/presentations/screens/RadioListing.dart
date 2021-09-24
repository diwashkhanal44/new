import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:you/config/api_call_defaults.dart';
import 'package:you/core/shared_widgets/builder_widgets/LoadingWidget.dart';
import 'package:you/features/authentication/presentation/blocs/Auth/auth_cubit.dart';
import 'package:you/features/radios/models/RadiosModel.dart';
import 'package:you/features/radios/presentations/cubits/favorite_radio/favorite_radio_cubit.dart';
import 'package:you/features/radios/presentations/cubits/radiostationListing/radiostationslisting_cubit.dart';
import 'package:you/routes/auto_router.gr.dart';

// ignore: must_be_immutable
class RadioListing extends HookWidget {
  RadioListing({Key? key, this.scrollController}) : super(key: key);
  final ScrollController? scrollController;
  int lastLength = 0;
  int requestedLength = 0;

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();

    if (scrollController != null) {
      scrollController!.addListener(() {
        if (scrollController!.position.pixels >=
            scrollController!.position.maxScrollExtent - 50) {
          if (lastLength != requestedLength) {
            BlocProvider.of<RadiostationslistingCubit>(context).fetchNextPage();
            requestedLength = lastLength;
          }
        }
      });
    } else {
      controller.addListener(() {
        if (controller.position.maxScrollExtent == controller.position.pixels) {
          if (lastLength != requestedLength) {
            BlocProvider.of<RadiostationslistingCubit>(context).fetchNextPage();
            requestedLength = lastLength;
          }
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Stations"),
        actions: [
          IconButton(
              onPressed: () =>
                  BlocProvider.of<RadiostationslistingCubit>(context).fetch(),
              icon: Icon(Icons.refresh))
        ],
      ),
      body: BlocBuilder<RadiostationslistingCubit, RadiostationslistingState>(
        builder: (context, state) {
          return state.map(initial: (initial) {
            BlocProvider.of<RadiostationslistingCubit>(context).fetch();
            return LoadingWidget();
          }, loading: (loading) {
            return LoadingWidget();
          }, loaded: (loaded) {
            return BlocBuilder<FavoriteRadioCubit, FavoriteRadioState>(
              builder: (context, state) {
                return RefreshIndicator(
                  onRefresh: () async {
                    BlocProvider.of<RadiostationslistingCubit>(context).fetch();
                    await Future.delayed(Duration(seconds: 3));
                  },
                  child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(height: 1),
                      itemCount: loaded.allStations.data!.length + 1,
                      itemBuilder: (context, index) {
                        if (index == loaded.allStations.data!.length) {
                          if (loaded.allStations.meta?.current_page !=
                              loaded.allStations.meta?.last_page)
                            return LoadingWidget();
                          else
                            return SizedBox();
                        }

                        final bool isFavorite = state.map(
                            initial: (initial) => false,
                            loaded: (favoriteLoaded) {
                              bool isFav = false;

                              for (int i = 0;
                                  i <
                                      favoriteLoaded
                                          .favoriteRadiosModel.data!.length;
                                  i++) {
                                if (favoriteLoaded
                                        .favoriteRadiosModel.data![i].id ==
                                    loaded.allStations.data![index].id) {
                                  isFav = true;
                                  break;
                                }
                              }

                              return isFav;
                            });

                        return RadioCard(
                            isFavorite: isFavorite,
                            station: loaded.allStations.data![index]);
                      }),
                );
              },
            );
          }, failure: (failure) {
            return LoadingWidget();
          });
        },
      ),
    );
  }
}

class RadioCard extends StatelessWidget {
  final Datum station;
  final bool isFavorite;
  const RadioCard({Key? key, required this.station, this.isFavorite = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>
          AutoRouter.of(context).push(RadioStationDetails(station: station)),
      dense: true,
      leading: SizedBox(
        height: 50,
        width: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: station.old_logo ?? defaultNewsProviderImageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, _, __) {
              return Image.network(defaultNewsProviderImageUrl,
                  fit: BoxFit.cover);
            },
          ),
        ),
      ),
      title: Text(
        station.name!,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: Text("${station.frequency} Mhz"),
      trailing: TextButton(
        style: ButtonStyle(
          padding:
              MaterialStateProperty.resolveWith((states) => EdgeInsets.zero),
        ),
        onPressed: () {
          if (BlocProvider.of<AuthCubit>(context).state is Authenticated)
            BlocProvider.of<FavoriteRadioCubit>(context)
                .toggleFavorite(station.id!);
          else
            AutoRouter.of(context).push(LoginScreen());
        },
        child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
            size: 25,
            color: isFavorite ? Colors.red : null),
      ),
    );
  }
}
