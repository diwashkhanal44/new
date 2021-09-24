import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdaptiveRichText extends StatelessWidget {
  final TextSpan textSpan;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final int? maxLines;
  const AdaptiveRichText(
      {Key? key,
      required this.textSpan,
      this.textStyle,
      this.textAlign,
      this.maxLines})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (kIsWeb)
      return SelectableText.rich(
        textSpan,
        style: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
      );
    else
      return Text.rich(
        textSpan,
        style: textStyle,
        textAlign: textAlign,
        maxLines: maxLines,
      );
  }
}
