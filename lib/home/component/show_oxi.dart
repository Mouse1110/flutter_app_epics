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
        margin: EdgeInsets.only(top: kDefultPadding * 3, right: kDefultPadding),
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
                minX: 1,
                minY: 0,
                maxX: 12,
                maxY: 10,
                gridData: FlGridData(
                  show: false,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 22,
                    getTextStyles: (value) => const TextStyle(
                        color: Color(0xff68737d),
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 2:
                          return '4 GIỜ';
                        case 5:
                          return '10 GIỜ';
                        case 8:
                          return '16 GIỜ';
                      }

                      return '';
                    },
                    margin: 8,
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    getTextStyles: (value) => const TextStyle(
                      color: Color(0xff67727d),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 2:
                          return '20%';
                        case 5:
                          return '50%';
                        case 8:
                          return '80%';
                      }
                      return '';
                    },
                    reservedSize: 28,
                    margin: 12,
                  ),
                ),
                borderData: FlBorderData(
                    show: true,
                    border:
                        Border.all(color: const Color(0xff37434d), width: 1)),
                lineBarsData: [
                  LineChartBarData(
                      spots: [
                        FlSpot(1, 6),
                        FlSpot(2, 4.2),
                        FlSpot(3, 6.6),
                        FlSpot(4, 5.3),
                        FlSpot(6, 8.2),
                        FlSpot(8, 7)
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
