import 'package:flutter/material.dart';
import 'package:ui_vegetable_unboarding/theme.dart';

class Categories extends StatelessWidget {
  final String imageAsset;
  final String nameCategories;

  Categories({this.imageAsset, this.nameCategories});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 85,
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            imageAsset,
            width: 40,
            height: 40,
          ),
          Text(
            nameCategories,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: blackColor,
            ),
          )
        ],
      ),
    );
  }
}
