import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_web/screen/view1.dart';
import 'package:flutter_app_web/screen/view2.dart';
import 'package:flutter_app_web/screen/view3.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  List<dynamic> list = [
    View1(),
    View2(),
    View3(),
  ];

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;
    // double height = ScreenUtil().screenHeight;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Container(child: list[index]),
              );
            },
          ),
          TextField(style: TextStyle(fontSize: 180.sp)),
          Text('Device width:${ScreenUtil().screenWidth}dp'),
          Text('Device height:${ScreenUtil().screenHeight}dp'),
          Text('Device pixel density:${ScreenUtil().pixelRatio}'),
          Text('Bottom safe zone distance:${ScreenUtil().bottomBarHeight}dp'),
          Text('Status bar height:${ScreenUtil().statusBarHeight}dp'),
          Text(
            'The ratio of actual width to UI design:${ScreenUtil().scaleWidth}',
            textAlign: TextAlign.center,
          ),
          Text(
            'The ratio of actual height to UI design:${ScreenUtil().scaleHeight}',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text('System font scaling factor:${ScreenUtil().textScaleFactor}'),
          const SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '16sp, will not change with the system.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
                textScaleFactor: 1.0,
              ),
              Text(
                '16sp,if data is not set in MediaQuery,my font size will change with the system.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
