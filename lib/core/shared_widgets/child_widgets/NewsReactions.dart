import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef OnReactionChange(String reactionName, String image);

class Reactions extends StatelessWidget {
  final String? currentlySelectedReaction;
  final OnReactionChange onReactionChange;
  Reactions(
      {Key? key,
      this.currentlySelectedReaction,
      required this.onReactionChange})
      : super(key: key);

  final reactions = [
    {"name": "LIKE", "asset": "assets/images/ic_like_fill.png"},
    {"name": "HAPPY", "asset": "assets/images/haha2.png"},
    {"name": "WOW", "asset": "assets/images/wow2.png"},
    {"name": "LOVE", "asset": "assets/images/love2.png"},
    {"name": "SAD", "asset": "assets/images/sad2.png"},
    {"name": "ANGRY", "asset": "assets/images/angry2.png"},
  ];

  @override
  Widget build(BuildContext context) {
    String? currentIcon() {
      late String? current;

      reactions.forEach((element) {
        if (element["name"] == currentlySelectedReaction)
          current = element["asset"];
      });

      return current;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      child: GestureDetector(
        onLongPressStart: (onLongPressStart) {
          HapticFeedback.mediumImpact();
          showMenu(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              context: context,
              position: RelativeRect.fromLTRB(
                  10, onLongPressStart.globalPosition.dy - 100, 10, 0),
              items: [
                PopupMenuItem(
                    enabled: false,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.from(reactions.map((e) => Container(
                              margin: EdgeInsets.symmetric(horizontal: 1),
                              width: 39,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentlySelectedReaction == null
                                      ? Colors.transparent
                                      : currentlySelectedReaction == e["name"]
                                          ? Colors.blue.shade300.withOpacity(.5)
                                          : Colors.transparent),
                              child: IconButton(
                                  visualDensity: VisualDensity.compact,
                                  tooltip: "${e["name"]}".toLowerCase(),
                                  onPressed: () async {
                                    Navigator.of(context).pop();
                                    await onReactionChange(e["name"] as String,
                                        e["asset"] as String);
                                  },
                                  icon: Image.asset("${e["asset"]}")),
                            )))))
              ]);
        },
        child: TextButton.icon(
          icon: currentlySelectedReaction == null
              ? Icon(Icons.thumb_up_alt_outlined)
              : SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("${currentIcon()}")),
          onPressed: () async {
            await onReactionChange("LIKE", "assets/images/ic_like_fill.png");
          },
          label: Text("Like"),
        ),
      ),
    );
  }
}
