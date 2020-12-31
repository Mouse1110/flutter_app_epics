import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';
import 'component/appbar_menu.dart';
import 'component/body.dart';
import 'component/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _BottomNav(context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: ClipPath(
            clipper: NavBarClip(),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromRGBO(112, 175, 133, 1),
                    kPrimaryColor
                  ])),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: DrawerMenu(),
      body: Stack(
        children: [
          Body(),
          _BottomNav(context),
        ],
      ),
    );
  }
}
