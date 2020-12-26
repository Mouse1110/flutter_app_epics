import 'package:flutter/material.dart';
import 'package:spocs/home/component/show_oxi.dart';
import 'headerbox.dart';
import 'list_plant_card.dart';
import 'list_view_moisture.dart';
import 'title_with_button_more.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderBox(),
          TittleWithButtonMore(
            title: 'Nồng độ Oxi',
          ),
          ShowOxi(),
          TittleWithButtonMore(
            title: 'Cây được chăm sóc',
          ),
          ListPlant(),
          TittleWithButtonMore(
            title: 'Độ ẩm',
          ),
          ListViewMoisture(),
          Container(
            height: 120,
          )
        ],
      ),
    );
  }
}
