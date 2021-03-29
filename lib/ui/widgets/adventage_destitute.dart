import 'package:flutter/material.dart';
import 'package:ui_vegetable_unboarding/models/recomended_model.dart';
import 'package:ui_vegetable_unboarding/theme.dart';
import 'package:ui_vegetable_unboarding/ui/widgets/adventage.dart';
import 'package:ui_vegetable_unboarding/ui/widgets/destitute.dart';

class AdventageDestitute extends StatefulWidget {
  final bool isSelecte;

  AdventageDestitute({
    this.isSelecte = false,
  });

  @override
  _AdventageDestituteState createState() => _AdventageDestituteState();
}

class _AdventageDestituteState extends State<AdventageDestitute> {
  bool isSelected;

  @override
  void initState() {
    super.initState();

    isSelected = widget.isSelecte;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.5 - 20,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Advantage",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: !isSelected ? blackColor : greyColor,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: MediaQuery.of(context).size.width * 0.5 - 20,
                        color: !isSelected ? Colors.orange : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5 - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = !isSelected;
                        });
                      },
                      child: Text(
                        "Deficiency",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: isSelected ? blackColor : greyColor,
                        ),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width * 0.5 - 20,
                      color: isSelected ? Colors.orange : Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        !isSelected
            ? Adventage(
                color: !isSelected ? greyColor : Colors.transparent,
              )
            : Destitute(color: isSelected ? greyColor : Colors.transparent),
      ],
    );
  }
}
