import 'package:flutter/material.dart';

class Destitute extends StatelessWidget {
  final Color color;

  Destitute({
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Text(
            "Berbahaya Bagi : \n1.Terdapat riwayat penyakit colestrol\n2.Penyakit Diabetes\n3.Penyakit Alergi\n4.Tidak dapat dikomsumsi pada saat demam\n5.Penyakit Amandel",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
