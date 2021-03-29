import 'package:flutter/material.dart';
import 'package:ui_vegetable_unboarding/dummy.dart';
import '../../theme.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: dataPopular.map((popular) {
            return Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 140,
                  width: 125,
                  decoration: BoxDecoration(
                    color: boxColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                          image: DecorationImage(
                            image: AssetImage(popular.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        popular.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ));
  }
}
