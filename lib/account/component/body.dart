import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';

import 'button_reply.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.4,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(180))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ButtonReply(), TitleAccount()],
          ),
        ),
      ],
    );
  }
}

class TitleAccount extends StatelessWidget {
  const TitleAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kDefultPadding * 4, right: kDefultPadding),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'Nguyễn Long Bá',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(
              '0382292563',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
          ),
          Expanded(
            child: Text(
              'Nhân Viên',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
