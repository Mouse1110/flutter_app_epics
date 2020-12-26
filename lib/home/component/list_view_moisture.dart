import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';

class ListViewMoisture extends StatelessWidget {
  const ListViewMoisture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(top: kDefultPadding * 0.4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ViewMoisture(
              moistue: 40,
              name: 'Lưỡi Hổ',
            ),
            ViewMoisture(
              moistue: 70,
              name: 'Bàng Singapo',
            ),
            ViewMoisture(
              moistue: 20,
              name: 'Cọ Nhật',
            ),
            ViewMoisture(
              moistue: 100,
              name: 'Kim Tiền',
            ),
          ],
        ),
      ),
    );
  }
}

class ViewMoisture extends StatelessWidget {
  const ViewMoisture({
    Key key,
    this.moistue,
    this.name,
  }) : super(key: key);
  final double moistue;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefultPadding),
      height: 160,
      alignment: Alignment.bottomCenter,
      child: ListMoisture(
        moisture: moistue,
        name: '$name',
      ),
    );
  }
}

class ListMoisture extends StatelessWidget {
  const ListMoisture({
    Key key,
    this.moisture,
    this.name,
  }) : super(key: key);
  final double moisture;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              '$moisture%',
              style: Theme.of(context)
                  .textTheme
                  .button
                  .copyWith(color: kPrimaryColor),
            ),
          ),
          Container(
            height: moisture,
            width: 30,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          Text(
            '$name',
            style: Theme.of(context).textTheme.button,
          )
        ],
      ),
    );
  }
}
