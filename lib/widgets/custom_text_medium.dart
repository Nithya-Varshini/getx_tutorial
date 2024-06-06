import 'package:flutter/material.dart';

class CustomTextMediumField extends StatelessWidget {
  final String value;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;

  const CustomTextMediumField(
      {Key? key, required this.value, this.size, this.fontWeight, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      value,
      style: TextStyle(
        // letterSpacing: 1,
        fontSize:
            size ?? 16, // Use size if provided, otherwise use default value 20
        color: color ?? Colors.black,
        fontWeight: fontWeight,
      ),
    );
  }
}
