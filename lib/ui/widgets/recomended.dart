import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_vegetable_unboarding/dummy.dart';
import 'package:ui_vegetable_unboarding/theme.dart';
import 'package:ui_vegetable_unboarding/ui/pages/detail_recomended.dart';

class Recomended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: dataRecomended.map((recomended) {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 105,
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailRecomended(
                  recomended: recomended,
                );
              }));
            },
            child: Row(
              children: <Widget>[
                Hero(
                  tag: recomended.imageUrl,
                  child: Container(
                    height: 105,
                    width: 134,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(recomended.imageUrl),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        recomended.title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            NumberFormat.currency(
                                    locale: 'id',
                                    decimalDigits: 0,
                                    symbol: 'IDR ')
                                .format(recomended.balance),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: starColor,
                            ),
                          ),
                          Text(
                            recomended.productModel,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: greyColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width:
                            MediaQuery.of(context).size.width - 40 - 15 - 134,
                        child: Text(
                          recomended.location,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: greyColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
