import 'package:flutter/material.dart';
import 'package:e_commerce/ui/widgets/basic/loading_widget.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: LoadingWidget());
  }
}
