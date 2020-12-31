import 'package:flutter/material.dart';
import 'package:spocs/Model/plant_info.dart';
import 'component/body.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  final List<PlantInfo> planInfo;
  DetailScreen({this.id, this.planInfo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        id: id,
        planInfo: planInfo,
      ),
    );
  }
}
