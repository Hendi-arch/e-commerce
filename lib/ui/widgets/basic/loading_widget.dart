import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final Color? valueColor;
  final double strokeWidth;
  final Color? backgroundColor;

  const LoadingWidget({Key? key, this.strokeWidth = 2.0, this.valueColor, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
        child: CircularProgressIndicator(
            strokeWidth: strokeWidth,
            backgroundColor: backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color?>(valueColor)));
  }
}
