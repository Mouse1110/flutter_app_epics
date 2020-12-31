import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';
import 'package:spocs/Model/plant_info.dart';
import 'image_and_icon.dart';
import 'name_plant.dart';

class IconCardAndImage extends StatefulWidget {
  final String idTree;
  final List<PlantInfo> planInfo;
  IconCardAndImage({Key key, this.idTree, this.planInfo}) : super(key: key);

  @override
  _IconCardAndImageState createState() => _IconCardAndImageState();
}

class _IconCardAndImageState extends State<IconCardAndImage> {
  var id = ['Tình Trạng', 'Độ Ẩm', 'Coin'];

  var value = ['Tốt', '68%', '14coin'];

  String idIndex = 'Tình Trạng';

  String valueIndex = 'Tốt';
  int indexTree = 0;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.planInfo.length; i++) {
      if (widget.planInfo[i].id == widget.idTree) {
        indexTree = i;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ImageAndIcon(
                image: widget.planInfo[indexTree].image,
                idTree: indexTree == widget.planInfo.length - 1
                    ? widget.planInfo[0].id
                    : widget.planInfo[indexTree + 1].id,
                planInfo: widget.planInfo,
              ),
              NamePlant(
                name: widget.planInfo[indexTree].name,
                id: widget.planInfo[indexTree].id,
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: kDefultPadding,
                      bottom: kDefultPadding,
                      left: kDefultPadding,
                      right: kDefultPadding),
                  child: Text(
                    widget.planInfo[indexTree].detail,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  )),
              ActivityPlant(
                id: '$idIndex',
                value: '$valueIndex',
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ActivityPlant extends StatelessWidget {
  const ActivityPlant({
    Key key,
    this.id,
    this.value,
  }) : super(key: key);
  final String id;
  final String value;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          SizedBox(
            width: size.width / 2,
            height: 84,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                ),
              ),
              color: kPrimaryColor,
              child: Text(
                '$id',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Text(
                '$value',
                style: TextStyle(fontSize: 16, letterSpacing: 1.25),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
