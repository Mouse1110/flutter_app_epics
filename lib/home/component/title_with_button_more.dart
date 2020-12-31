import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';

class TittleWithButtonMore extends StatelessWidget {
  const TittleWithButtonMore({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
      child: Align(
          alignment: Alignment.centerLeft,
          child: TitleCustomUnderLine(text: title)),
    );
  }
}

class TitleCustomUnderLine extends StatelessWidget {
  const TitleCustomUnderLine({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
