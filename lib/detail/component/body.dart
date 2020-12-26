import 'package:flutter/material.dart';

import 'icon_card.dart';

class Body extends StatelessWidget {
  final String id;
  Body({this.id});
  @override
  Widget build(BuildContext context) {
    return IconCardAndImage(
      id: id,
    );
  }
}
