import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_vegetable_unboarding/models/recomended_model.dart';
import 'package:ui_vegetable_unboarding/theme.dart';
import 'package:ui_vegetable_unboarding/ui/widgets/adventage_destitute.dart';

class BodyRecomended extends StatelessWidget {
  final RecomendedModel recomended;
  BodyRecomended({this.recomended});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 277),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        recomended.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: blackColor,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            NumberFormat.currency(
                              locale: 'id',
                              symbol: 'IDR ',
                              decimalDigits: 0,
                            ).format(recomended.balance),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: starColor,
                            ),
                          ),
                          Text(
                            recomended.productModel,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: greyColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                      ),
                      Icon(
                        Icons.star,
                        color: starColor,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              AdventageDestitute(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Location",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    recomended.location,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: greyColor,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: boxColor,
                    ),
                    child: Icon(Icons.location_on, size: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: RaisedButton(
                  onPressed: () {},
                  elevation: 0,
                  color: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: whiteColor,
                    ),
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
