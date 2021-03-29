import 'package:flutter/material.dart';
import 'package:ui_vegetable_unboarding/theme.dart';

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 25,
          right: 20,
        ),
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFDFDFD).withOpacity(0.5),
        ),
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? starColor : blackColor,
          size: 20,
        ),
      ),
    );
  }
}
