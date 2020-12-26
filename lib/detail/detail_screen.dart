import 'package:flutter/material.dart';
import 'component/body.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  DetailScreen({this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        id: id,
      ),
    );
  }
}
