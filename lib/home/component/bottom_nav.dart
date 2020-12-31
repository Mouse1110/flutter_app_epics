import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {}

  _buidNavItem(IconData icon, bool active) {
    return CircleAvatar(
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
    );
  }
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
