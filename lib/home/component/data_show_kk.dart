import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';

class DataShowKK extends StatelessWidget {
  const DataShowKK({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AllTittleKK(),
        Container(
          width: size.width * 0.3,
          height: size.width * 0.3,
          decoration: BoxDecoration(
            border: Border.all(width: 5, color: kPrimaryColor),
            shape: BoxShape.circle,
            gradient: RadialGradient(colors: [Colors.white, Colors.white12]),
          ),
          child: Center(
            child: Text(
              '70%',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 28,
                  letterSpacing: 1.25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class AllTittleKK extends StatelessWidget {
  const AllTittleKK({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: kDefultPadding),
          child: TittleShowKK(
            colorLiner1: Color.fromRGBO(91, 134, 229, 1),
            colorLiner2: Color.fromRGBO(54, 209, 220, 1),
            tittle: 'Mức cao nhất',
            icon: 'assets/images/heart1.png',
            count: 82,
          ),
        ),
        TittleShowKK(
          colorLiner1: Color.fromRGBO(203, 45, 62, 1),
          colorLiner2: Color.fromRGBO(239, 71, 58, 1),
          tittle: 'Mức thấp nhất',
          icon: 'assets/images/heart2.png',
          count: 42,
        ),
      ],
    );
  }
}

class TittleShowKK extends StatelessWidget {
  const TittleShowKK(
      {Key key,
      this.colorLiner1,
      this.colorLiner2,
      this.tittle,
      this.icon,
      this.count})
      : super(key: key);
  final Color colorLiner1;
  final Color colorLiner2;
  final String tittle;
  final String icon;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefultPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: kDefultPadding * 0.2,
            height: kDefultPadding * 2,
            margin: EdgeInsets.only(right: kDefultPadding),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [colorLiner1, colorLiner2]),
                borderRadius: BorderRadius.circular(12)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tittle,
                style: TextStyle(
                    color: colorLiner2.withOpacity(0.6),
                    letterSpacing: 1.25,
                    fontSize: 14),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    icon,
                    height: 16,
                  ),
                  Text(
                    '$count%',
                    style: TextStyle(letterSpacing: 1.125, fontSize: 16),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
