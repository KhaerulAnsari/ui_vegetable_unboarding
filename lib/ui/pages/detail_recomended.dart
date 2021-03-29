import 'package:flutter/material.dart';
import 'package:ui_vegetable_unboarding/models/recomended_model.dart';
import 'package:ui_vegetable_unboarding/ui/widgets/body_detail_recomended.dart';
import 'package:ui_vegetable_unboarding/ui/widgets/favorite_button.dart';

import '../../theme.dart';

class DetailRecomended extends StatelessWidget {
  final RecomendedModel recomended;

  DetailRecomended({this.recomended});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: whiteColor,
          ),
          Hero(
            tag: recomended.imageUrl,
            child: Container(
              height: 330,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(recomended.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          BodyRecomended(
            recomended: recomended,
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 25,
                      left: 20,
                    ),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFDFDFD).withOpacity(0.5),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      size: 25,
                    ),
                  ),
                ),
                FavoriteButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
