import 'package:flutter/material.dart';
import 'package:ui_vegetable_unboarding/theme.dart';
import 'package:ui_vegetable_unboarding/ui/widgets/categories.dart';
import 'package:ui_vegetable_unboarding/ui/widgets/popular.dart';
import 'package:ui_vegetable_unboarding/ui/widgets/recomended.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Halo,",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: greyColor,
                            ),
                          ),
                          Text(
                            "Khaerul Ansari",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: blackColor,
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 55,
                        height: 55,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: blackColor, width: 1),
                        ),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/khaerul.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Categories(
                        imageAsset: 'assets/vegetable.png',
                        nameCategories: 'Vegetable',
                      ),
                      Categories(
                        imageAsset: 'assets/fruits.png',
                        nameCategories: 'Fruits',
                      ),
                      Categories(
                        imageAsset: 'assets/fish.png',
                        nameCategories: 'Sea Food',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Populer Product",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Popular(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Recomended Product",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Recomended(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
