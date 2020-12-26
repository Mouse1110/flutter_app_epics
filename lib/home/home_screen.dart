import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';
import 'package:spocs/detail/detail_screen.dart';
import 'component/appbar_menu.dart';
import 'component/body.dart';
import 'component/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _BottomNav(context, press()) {
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
        Positioned(
          bottom: 45,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buidNavItem(Icons.timelapse, true, context, press()),
              SizedBox(
                width: kDefultPadding + 10,
              ),
              Opacity(
                opacity: 0,
              ),
              SizedBox(
                width: kDefultPadding + 10,
              ),
              _buidNavItem(Icons.home, true, context, () {}),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Tình Trạng',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: kDefultPadding + 10,
              ),
              Opacity(
                opacity: 0,
              ),
              SizedBox(
                width: kDefultPadding + 10,
              ),
              Text('Trang Chủ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        )
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
          _BottomNav(context, () {}),
        ],
      ),
    );
  }
}

_buidNavItem(IconData icon, bool active, BuildContext context, Function press) {
  return GestureDetector(
    onTap: () {},
    child: CircleAvatar(
      radius: 30,
      backgroundColor: kPrimaryColor,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: active
            ? Colors.white.withOpacity(0.95)
            : Colors.transparent.withOpacity(0.4),
        child: Icon(
          icon,
          color: kPrimaryColor,
        ),
      ),
    ),
  );
}

class NavBarClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;
    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.cubicTo(
        5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
    path.cubicTo(
        9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
