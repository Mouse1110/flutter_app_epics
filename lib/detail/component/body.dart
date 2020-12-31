import 'package:flutter/material.dart';
import 'package:spocs/Model/plant_info.dart';

import 'icon_card.dart';

class Body extends StatelessWidget {
  final String id;
  final List<PlantInfo> planInfo;
  Body({this.id, this.planInfo});
  @override
  Widget build(BuildContext context) {
    return IconCardAndImage(
      idTree: id,
      planInfo: planInfo,
    );
  }
}
