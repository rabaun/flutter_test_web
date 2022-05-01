import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_web/image/zoom_image.dart';
import 'package:flutter_app_web/image/zoom_image1.dart';
import 'package:flutter_app_web/image/zoom_image2.dart';
import 'package:flutter_app_web/image/zoom_image3.dart';

class View4 extends StatelessWidget {
  View4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  child: ZoomImage(),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  child: ZoomImage1(),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  child: ZoomImage2(),
                )),
          ],
        ),
        Container(
          alignment: Alignment.center,
          child: ZoomImage3(),
        ),
      ],
    );
  }
}
