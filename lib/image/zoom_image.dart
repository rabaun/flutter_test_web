import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZoomImage extends StatelessWidget {
  const ZoomImage({Key? key}) : super(key: key);

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
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage('sv_gos_ur.jpg'),
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
        width: width * 0.293,
        height: width * 1.098,
        child: Image(
          fit: BoxFit.cover,
          image: const AssetImage('sv_gos_ur.jpg'),
          width: width * 0.293,
          height: width * 1.098,
          alignment: Alignment.center,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('sv_gos_ur.jpgg'), fit: BoxFit.cover)),
      ),
    );
  }
}