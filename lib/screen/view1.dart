import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/pictureslider.dart';

class View1 extends StatefulWidget {
  View1({Key? key}) : super(key: key);

  @override
  _View1State createState() => _View1State();
}

class _View1State extends State<View1> {
  var width;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    setState(() {
      width = size;
    });
    printScreenInformation();
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(5), 0, 0),
            child: Container(
              alignment: Alignment.topCenter,
              width: width * 0.6,
              height: width * 0.152,
              child: PrefetchImageDemo(),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Padding(
                padding:
                    EdgeInsets.fromLTRB(50, ScreenUtil().setWidth(5), 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(5),
                          ScreenUtil().setWidth(25), 0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: width * 0.3,
                        height: width * 0.036,
                        // color: Colors.white60,
                        child:
                            Text('Мы рады приветствовать Вас на нашем сайте!',
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.012,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, 0, ScreenUtil().setWidth(25), 0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: width * 0.3,
                        height: width * 0.116,
                        // color: Colors.redAccent,
                        child: Text(
                            'Специальная оценка условий труда (СОУТ) - единый комплекс последовательно '
                            'выполняемых процедур по выявлению и оценке уровня воздействия вредных и опасных '
                            'факторов производственной среды и трудового процесса на работников. СОУТ '
                            'регулирует систему предоставления льгот и '
                            'гарантий, а также повышает ответственность работодателей перед работниками.',
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.01,
                              fontStyle: FontStyle.normal,
                            )),
                      ),
                    ),
                  ],
                ))),
      ],
    );
  }
}

void printScreenInformation() {
  print('Device width dp:${1.sw}dp');
  print('Device height dp:${1.sh}dp');
  print('Device pixel density:${ScreenUtil().pixelRatio}');
  print('Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}dp');
  print('Status bar height dp:${ScreenUtil().statusBarHeight}dp');
  print('The ratio of actual width to UI design:${ScreenUtil().scaleWidth}');
  print('The ratio of actual height to UI design:${ScreenUtil().scaleHeight}');
  print('System font scaling:${ScreenUtil().textScaleFactor}');
  print('0.5 times the screen width:${0.5.sw}dp');
  print('0.5 times the screen height:${0.5.sh}dp');
  print('Screen orientation:${ScreenUtil().orientation}');
}
