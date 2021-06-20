import 'package:e_commerce/shared/asset_path.dart';
import 'package:e_commerce/ui/widgets/basic/custom_text_widget.dart';
import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 366,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('${AssetPath.imagesPath}new-collections.png'),
        ),
      ),
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 27),
        child: CustomTextWidget(
            textToDisplay: 'New collection',
            textStyle: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
