import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  final String data;

  final TextStyle? style;
  final int? maxLines;

  final TextAlign? textAlign;

  const AdaptiveText(this.data,
      {Key? key, this.style, this.textAlign, this.maxLines})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (kIsWeb)
      return SelectableText(
        data,
        style: style,
        textAlign: textAlign,
        maxLines: maxLines,
      );
    else
      return Text(
        data,
        style: style,
        maxLines: maxLines,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
      );
  }
}
