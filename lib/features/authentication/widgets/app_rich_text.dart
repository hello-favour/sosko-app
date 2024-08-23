import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final List<TextSpan> textSpans;
  final Color? highlightColor;
  final TextStyle? style;

  const CustomRichText({
    super.key,
    required this.textSpans,
    this.highlightColor,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = style ?? Theme.of(context).textTheme.bodyMedium;
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: textSpans,
        style: defaultStyle?.copyWith(
          color: highlightColor ?? defaultStyle.color,
        ),
      ),
    );
  }
}
