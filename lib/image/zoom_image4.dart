import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZoomImage4 extends StatelessWidget {
  const ZoomImage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;
    return GestureDetector(
      onTap: () async {
        await showDialog(context: context, builder: (_) => ImageDialog());
      },
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        child: Image(
          fit: BoxFit.cover,
          image: const AssetImage('address.png'),
          width: width * 0.393,
          height: width * 0.319,
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
        width: width * 0.593,
        height: width * 0.598,
        child: Image(
          fit: BoxFit.cover,
          image: const AssetImage('address.png'),
          width: width * 0.593,
          height: width * 0.598,
          alignment: Alignment.center,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('address.png'), fit: BoxFit.cover)),
      ),
    );
  }
}