import 'package:flutter/material.dart';

class FlexibleCard extends StatelessWidget {
  final String? item1;
  final String? item2;
  final Axis axis;
  final int index;

  const FlexibleCard({Key? key, required this.item1, required this.axis, this.item2, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: axis,
      children: [
        if (item1 != null) Expanded(child: Image.asset(item1!, fit: BoxFit.fill)),
        if (item2 != null) Expanded(child: Image.asset(item2!, fit: BoxFit.fill)),
      ],
    );
  }
}
