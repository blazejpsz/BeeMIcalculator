import 'package:flutter/material.dart';
import 'package:beemi_calculator/gender_card.dart';
import 'widget_utils.dart' show screenAwareSize;

class InputPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: MediaQuery.of(context).padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTitle(context),
                Expanded(child: _buildCards(context)),
                _buildButtom(context),
              ],
            )));
  }

  // get centerTitle => null;

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.0,
        top: screenAwareSize(56.0, context),
      ),
      child: const Text(
        "BeeMI Calculator",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildButtom(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: screenAwareSize(108.0, context),
      width: double.infinity,
      child: Switch(value: true, onChanged: (val) {}),
    );
  }

  Widget _buildCards(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: 14.0,
          right: 14.0,
          top: screenAwareSize(32.0, context),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(child: GenderCard()),
                  Expanded(child: _tempCard('Weight')),
                ],
              ),
            ),
            Expanded(child: _tempCard('Height'))
          ],
        ));
  }

  Widget _tempCard(String label) {
    return Card(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      child: Text(label),
    ));
  }
}
