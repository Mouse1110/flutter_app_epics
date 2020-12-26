import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';
import 'package:spocs/Model/plant_info.dart';
import 'image_and_icon.dart';
import 'name_plant.dart';

class IconCardAndImage extends StatefulWidget {
  final String id;
  IconCardAndImage({Key key, this.id}) : super(key: key);

  @override
  _IconCardAndImageState createState() => _IconCardAndImageState();
}

class _IconCardAndImageState extends State<IconCardAndImage> {
  var id = ['Tình Trạng', 'Độ Ẩm', 'Coin'];

  var value = ['Tốt', '68%', '14coin'];

  String idIndex = 'Tình Trạng';

  String valueIndex = 'Tốt';
  int indexTree = 0;

  List<PlantInfo> planInfo = [
    PlantInfo(
      image: 'assets/images/img_cayluoiho.jpg',
      name: 'Lưỡi Hổ',
      id: 'D3S2',
      price: 25,
    ),
    PlantInfo(
      image: 'assets/images/img_caykimtien.jpg',
      name: 'Kim Tiền',
      id: 'D3D1',
      price: 15,
    ),
    PlantInfo(
      image: 'assets/images/img_cayconhat.jpg',
      name: 'Cọ Nhật',
      id: 'D3A4',
      price: 2,
    ),
    PlantInfo(
      image: 'assets/images/img_bangsingapo.jpg',
      name: 'Bàng Singapo',
      id: 'D3F3',
      price: 1,
    ),
  ];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < planInfo.length; i++) {
      if (planInfo[i].id == widget.id) {
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
                image: planInfo[indexTree].image,
              ),
              NamePlant(
                name: planInfo[indexTree].name,
                id: planInfo[indexTree].id,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
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
