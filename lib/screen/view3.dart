import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_web/screen/zoom_image.dart';
import 'package:flutter_app_web/screen/zoom_image1.dart';
import 'package:flutter_app_web/screen/zoom_image2.dart';
import 'package:flutter_app_web/screen/zoom_image3.dart';

class View3 extends StatelessWidget {
  View3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
            Row(
              children: const [
                ZoomImage(),
                ZoomImage1(),
                ZoomImage2(),
              ],
            ),
            Row(children: const [
              ZoomImage3(),
            ]),
          ],
        ),
      ],
    );
  }
}
