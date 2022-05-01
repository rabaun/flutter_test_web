import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class View2 extends StatefulWidget {
  View2({Key? key}) : super(key: key);

  @override
  _View2State createState() => _View2State();
}

class _View2State extends State<View2> {
  var width;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    setState(() {
      width = size;
    });
    return Padding(
      padding:  EdgeInsets.fromLTRB(width * 0.07, 0, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: width * 0.7,
                  height: width * 0.04,
                  // color: Colors.red,
                  child: Text('О Нас',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.018,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )),
                ),
                Container(
                  padding:  EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                  alignment: Alignment.topLeft,
                  width: width * 0.8,
                  height: width * 0.05,
                  child: Text(
                      'Наша испытательная лаборатория обладают полным набором оборудования, необходимого для оценки и '
                      'измерений вредных и опасных производственных факторов для целей специальной оценки условий труда в организациях. '
                      'При проведении спецоценки используются оборудование отечественного и зарубежного производства.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.012,
                        fontStyle: FontStyle.normal,
                      )),
                ),
                Container(
                  padding:  EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                  alignment: Alignment.topLeft,
                  width: width * 0.8,
                  height: width * 0.05,
                  child: Text(
                      'Спектр измерений, которые проводят наши аккредитованные испытательные лаборатории, '
                      'достаточно широк, и включает все факторы, обозначенные в Федеральном законе '
                      'Российской Федерации от 28 декабря 2013 г. N 426-ФЗ "О специальной оценке условий труда".',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.012,
                        fontStyle: FontStyle.normal,
                      )),
                ),
                Container(
                  padding:  EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                  alignment: Alignment.topLeft,
                  width: width * 0.8,
                  height: width * 0.05,
                  child: Text(
                      'В распоряжении Испытательной лаборатории по анализу факторов производственной и окружающей среды ООО “ПрофСтандарт” имеется '
                      'специализированная химико-аналитическая лаборатория, обладающая техническими возможностями для '
                      'проведения газохроматографических, спектрофотометрических и ионометрических исследований на базе '
                      'собственного оборудования (без привлечения подрядных и субподрядных организаций), а также укомплектованная штатом сотрудников '
                      'с химическим образованием для профессионального проведения химико-аналитических работ. Спектр проводимых исследований химических'
                      ' факторов соответствует области аккредитации Испытательной лаборатории.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.012,
                        fontStyle: FontStyle.normal,
                      )),
                ),
                Container(
                  padding:  EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                  alignment: Alignment.topLeft,
                  width: width * 0.8,
                  height: width * 0.05,
                  child: Text(
                      ' Все приборы, используемые при оценках факторов производственной среды,находятся в собственности группы компаний,'
                      ' внесены в Госреестр и проходят своевременную аттестацию и поверку.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.012,
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
