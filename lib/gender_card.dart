import 'package:beemi_calculator/card_title.dart';
import 'package:beemi_calculator/gender.dart';
import 'package:beemi_calculator/widget_utils.dart';

import 'package:flutter/material.dart';

import 'widget_utils.dart' show screenAwareSize;

class GenderCard extends StatefulWidget {
  final Gender? initialGender;

  const GenderCard({this.initialGender, Key? key}) : super(key: key);

  @override
  _GenderCardState createState() => _GenderCardState();
}

double _circleSize(BuildContext context) => screenAwareSize(80.0, context);

class _GenderCardState extends State<GenderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
            width: double.infinity,
            child: Padding(
                padding: EdgeInsets.only(top: screenAwareSize(8.0, context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const CardTitle("GENDER"),
                    Padding(
                      padding:
                          EdgeInsets.only(top: screenAwareSize(16.0, context)),
                      child: _drawMainStack(),
                    ),
                  ],
                ))));
  }

  Widget _drawMainStack() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        _drawCircleIndicator(),
      ],
    );
  }

  Widget _drawCircleIndicator() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        GenderCircle(),
      ],
    );
  }
}

class GenderCircle extends StatelessWidget {
  GenderCircle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: _circleSize(context),
      height: _circleSize(context),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(244, 244, 244, 1.0),
      ),
    );
  }
}
