import 'package:flutter/material.dart';
import '../../Model/constants.dart';

class NamePlant extends StatelessWidget {
  const NamePlant({
    Key key,
    this.name,
    this.id,
  }) : super(key: key);
  final String name;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '$name\n',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      )),
              TextSpan(
                  text: '$id',
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
