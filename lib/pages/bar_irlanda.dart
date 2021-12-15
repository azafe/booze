import 'package:booze/models/pub.dart';
import 'package:booze/pages/shop.dart';
import 'package:flutter/material.dart';
import 'package:booze/models/drink.dart';

class PubShop extends StatelessWidget {
  const PubShop({
    Key? key,
    required this.pub,
  }) : super(key: key);

  final Pub pub;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Test(
        pub: pub,
      ),
    ));
  }
}

class MySilverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Pub pub;

  MySilverAppBar({required this.expandedHeight, required this.pub});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Image(
          image: AssetImage(pub.imageUrl),
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Text(
              pub.name,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  shadows: <Shadow>[
                    Shadow(
                        offset: Offset(5, 5),
                        blurRadius: 8,
                        color: Colors.black)
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
