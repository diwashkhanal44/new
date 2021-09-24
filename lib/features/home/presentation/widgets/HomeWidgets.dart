import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:you/core/shared_widgets/builder_widgets/AdaptiveText.dart';
import 'package:you/core/shared_widgets/builder_widgets/ComingSoon.dart';
import 'package:you/routes/auto_router.gr.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _HomeWidget(
            title: AppLocalizations.of(context)!.news,
            svgImage: "assets/news.svg",
            onPressed: () {
              AutoRouter.of(context).push(AllNewsScreen());
            }),
        _HomeWidget(
          title: AppLocalizations.of(context)!.radios,
          svgImage: "assets/radios.svg",
          onPressed: () {
            AutoRouter.of(context).push(RadioListing());
          },
        ),
        _HomeWidget(
          title: AppLocalizations.of(context)!.videos,
          svgImage: "assets/videos.svg",
          onPressed: () => AutoRouter.of(context).push(LatestVideoListing()),
        ),
        ComingSoon(
          child: _HomeWidget(
            title: AppLocalizations.of(context)!.audios,
            svgImage: "assets/audios.svg",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class _HomeWidget extends StatelessWidget {
  final String title;
  final String svgImage;
  final VoidCallback onPressed;

  const _HomeWidget(
      {Key? key,
      required this.title,
      required this.svgImage,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Theme.of(context).textButtonTheme.style!.copyWith(
          padding:
              MaterialStateProperty.resolveWith((states) => EdgeInsets.all(8))),
      onPressed: onPressed,
      child: Column(
        children: [
          SvgPicture.asset(
            svgImage,
            width: 36,
            height: 36,
          ),
          SizedBox(
            height: 10,
          ),
          AdaptiveText(title, style: Theme.of(context).textTheme.subtitle2)
        ],
      ),
    );
  }
}
