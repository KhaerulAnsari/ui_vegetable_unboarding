import 'package:flutter/material.dart';
import 'package:ui_vegetable_unboarding/models/popular_model.dart';

class DetailPopular extends StatelessWidget {
  final PopularModel popular;

  DetailPopular({this.popular});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(popular.imageUrl),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
