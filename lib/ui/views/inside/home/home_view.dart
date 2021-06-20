import 'package:e_commerce/shared/asset_path.dart';
import 'package:e_commerce/ui/views/inside/home/local_widget/featured.dart';
import 'package:e_commerce/ui/views/inside/home/local_widget/flexible_card.dart';
import 'package:e_commerce/ui/widgets/basic/custom_text_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final _dummyData = [
    '${AssetPath.imagesPath}women-black.png',
    '${AssetPath.imagesPath}mens-hat.png',
    '${AssetPath.imagesPath}test.png',
    '${AssetPath.imagesPath}test2.png',
    '${AssetPath.imagesPath}test3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            expandedHeight: 366,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Featured(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return FlexibleCard(
                  index: index,
                  axis: Axis.horizontal,
                  item1: index.isEven ? _dummyData[index] : null,
                  item2: index == (_dummyData.length - 1) ? null : _dummyData[index + 1],
                );
              },
              childCount: _dummyData.length,
            ),
          ),
        ],
      ),
    );
  }
}
