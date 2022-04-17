import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZoomImage2 extends StatelessWidget {
  const ZoomImage2({Key? key}) : super(key: key);

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
          image: AssetImage('doc4.jpg'),
          width: width * 0.293,
          height: width * 0.219,
          alignment: Alignment.center,
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
        height: width * 0.878,
        child: Image(
          fit: BoxFit.cover,
          image: const AssetImage('doc4.jpg'),
          width: width * 0.293,
          height: width * 0.878,
          alignment: Alignment.center,
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('doc4.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}