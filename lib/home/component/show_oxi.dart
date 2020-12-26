import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';

import 'data_show_kk.dart';

class ShowOxi extends StatelessWidget {
  const ShowOxi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefultPadding, right: kDefultPadding, bottom: kDefultPadding),
      height: size.height * 0.5,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.4))
          ]),
      child: Container(
        margin: EdgeInsets.only(
            top: kDefultPadding * 3,
            left: kDefultPadding,
            right: kDefultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DataShowKK(),
            SizedBox(
              width: size.width * 0.8,
              height: 100,
              child: LineChart(LineChartData(
                backgroundColor: Colors.white,
                minX: 6,
                minY: 0,
                maxX: 12,
                maxY: 10,
                gridData: FlGridData(
                  show: false,
                ),
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(
                    show: false,
                    border: Border.all(color: Colors.black, width: 1)),
                lineBarsData: [
                  LineChartBarData(
                      spots: [
                        FlSpot(6, 6),
                        FlSpot(7, 4.2),
                        FlSpot(8, 6.6),
                        FlSpot(9, 5.3),
                        FlSpot(10, 8.2)
                      ],
                      isCurved: true,
                      colors: [Colors.red, Colors.blue],
                      barWidth: 5,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        colors: [
                          Colors.red.withOpacity(0.4),
                          Colors.blue.withOpacity(0.4)
                        ],
                      )),
                ],
              )),
            ),
            Opacity(
              opacity: 0,
            )
          ],
        ),
      ),
    );
  }
}
