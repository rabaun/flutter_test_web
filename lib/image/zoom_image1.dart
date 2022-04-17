import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZoomImage1 extends StatelessWidget {
  const ZoomImage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;
    return GestureDetector(
      onTap: () async {
        await showDialog(
            context: context, builder: (_) => ImageDialog());
      },
      child: Container(
        color: Colors.transparent ,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        child:  Image(
          fit: BoxFit.cover,
          image: const AssetImage('ros_att.jpg'),
          width: width * 0.293,
          height: width * 0.219,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}

class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;
    return Dialog(
      child: Container(
        width: width * 0.439,
        height: width * 0.293,
        child: Image(
          fit: BoxFit.cover,
          image: const AssetImage('ros_att.jpg'),
          width: width * 0.439,
          height: width * 0.293,
          alignment: Alignment.center,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('ros_att.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}
