import 'package:flutter/material.dart';
import 'package:spocs/detail/detail_screen.dart';
import '../../Model/constants.dart';
import 'package:spocs/Model/plant_info.dart';

class ListPlant extends StatefulWidget {
  const ListPlant({
    Key key,
  }) : super(key: key);

  @override
  _ListPlantState createState() => _ListPlantState();
}

class _ListPlantState extends State<ListPlant> {
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
  Widget PlantCard(size, image, name, id, price, press) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        id: id,
                      )));
        });
      },
      child: Container(
        margin: EdgeInsets.only(
            left: kDefultPadding,
            top: kDefultPadding / 2,
            bottom: kDefultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(
              image,
              height: size.height * 0.2,
              fit: BoxFit.contain,
            ),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(kDefultPadding / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ]),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '$name\n',
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: '$id',
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5))),
                      ]),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: kDefultPadding),
        child: Row(
          children: planInfo
              .map(
                  (e) => PlantCard(size, e.image, e.name, e.id, e.price, () {}))
              .toList(),
        ),
      ),
    );
  }
}
