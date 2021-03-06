import 'package:flutter/material.dart';
import 'package:spocs/Model/constants.dart';
import 'package:spocs/Model/plant_info.dart';
import 'package:spocs/detail/detail_screen.dart';

class ImageAndIcon extends StatefulWidget {
  final String image;
  final String idTree;
  final List<PlantInfo> planInfo;
  const ImageAndIcon({Key key, this.image, this.idTree, this.planInfo})
      : super(key: key);

  @override
  _ImageAndIconState createState() => _ImageAndIconState();
}

class _ImageAndIconState extends State<ImageAndIcon> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefultPadding * 2),
      child: SizedBox(
        height: size.height * 0.7,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefultPadding),
                        icon: Icon(Icons.reply),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    Opacity(
                        opacity: 0,
                        child: IconCard(icon: Icon(Icons.brightness_7))),
                    Opacity(
                        opacity: 0, child: IconCard(icon: Icon(Icons.ac_unit))),
                    IconCard(
                      icon: Icon(Icons.filter_alt),
                      press: () {
                        setState(() {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  id: widget.idTree,
                                  planInfo: widget.planInfo,
                                ),
                              ));
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  )
                ],
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({Key key, this.icon, this.press}) : super(key: key);
  final Icon icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22),
              ),
              BoxShadow(
                offset: Offset(-15, -15),
                blurRadius: 20,
                color: Colors.white,
              )
            ]),
        child: icon,
      ),
    );
  }
}
