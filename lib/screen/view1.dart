import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/pictureslider.dart';

class View1 extends StatelessWidget {
  View1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(5), 0, 0),
          child: Container(
            alignment: Alignment.topCenter,
            width: width * 0.6,
            height: width * 0.152,
            child: PrefetchImageDemo(),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(5), ScreenUtil().setWidth(25), 0),
              child: Container(
                alignment: Alignment.topCenter,
                width: width * 0.3,
                height: width * 0.036,
                // color: Colors.white60,
                child: Text('Мы рады приветствовать Вас на нашем сайте!',
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
              padding: EdgeInsets.fromLTRB(0, 0, ScreenUtil().setWidth(25), 0),
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
        )
      ],
    );
  }
}
