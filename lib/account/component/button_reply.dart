import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';

class ButtonReply extends StatelessWidget {
  const ButtonReply({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(
            left: kDefultPadding, top: kDefultPadding, bottom: kDefultPadding),
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.reply,
            )),
      ),
    );
  }
}
