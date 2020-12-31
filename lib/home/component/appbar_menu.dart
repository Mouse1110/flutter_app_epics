import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
  );
}

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kPrimaryColor,
        margin: EdgeInsets.only(top: kDefultPadding * 8),
        padding: EdgeInsets.only(top: kDefultPadding),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: kDefultPadding),
              child: FlatButton.icon(
                label: Text(
                  'Cá Nhân',
                  style: TextStyle(
                      color: Colors.white, fontSize: 18, letterSpacing: 1.5),
                ),
                icon: Icon(
                  Icons.account_box,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            FlatButton.icon(
              label: Text(
                'Chi Tiết',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, letterSpacing: 1.5),
              ),
              icon: Icon(
                Icons.account_tree,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
