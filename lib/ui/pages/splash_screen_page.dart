import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_vegetable_unboarding/dummy.dart';
import 'package:ui_vegetable_unboarding/models/item_model.dart';
import 'package:ui_vegetable_unboarding/theme.dart';
import 'package:ui_vegetable_unboarding/ui/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    onboardingItem(ItemModel item) {
      return Stack(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(seconds: 1),
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 225,
              decoration: BoxDecoration(
                color: Color(0xFF404340).withOpacity(0.53),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      item.subtitle,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: whiteColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 200,
                      height: 45,
                      child: RaisedButton(
                        elevation: 0,
                        onPressed: () {
                          if (currentIndex == 2) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          } else
                            carouselController.nextPage();
                        },
                        color: greenColor,
                        child: Text(
                          currentIndex == 2 ? "Get Started" : "Next",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        AnimatedContainer(
                          duration: Duration(milliseconds: 50),
                          width: currentIndex == 0 ? 15 : 10,
                          height: currentIndex == 0 ? 15 : 10,
                          decoration: BoxDecoration(
                            color: currentIndex == 0 ? whiteColor : greyColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: currentIndex == 1 ? 15 : 10,
                          height: currentIndex == 1 ? 15 : 10,
                          decoration: BoxDecoration(
                            color: currentIndex == 1 ? whiteColor : greyColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 5),
                          width: currentIndex == 2 ? 15 : 10,
                          height: currentIndex == 2 ? 15 : 10,
                          decoration: BoxDecoration(
                            color: currentIndex == 2 ? whiteColor : greyColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: CarouselSlider(
        items: data
            .map((item) => onboardingItem(ItemModel.fromJson(item)))
            .toList(),
        options: CarouselOptions(
            initialPage: currentIndex,
            height: double.infinity,
            enableInfiniteScroll: false,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            }),
        carouselController: carouselController,
      ),
    );
  }
}
