import 'package:flutter/material.dart';

class Adventage extends StatelessWidget {
  final Color color;
  Adventage({
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Text(
            "1.Mengandung banyak vitami\n2.Dapat dijadikan Jus\n3.Melancarkan pelariran darah\n4.Setelah diminum badang Enteng\n5.Merasa lebih segar",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
