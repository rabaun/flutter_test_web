import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class View2 extends StatelessWidget {
  View2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;
    return Row(crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(ScreenUtil().setWidth(25), 0, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(5), 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.center,
                  width: width * 0.3,
                  height: width * 0.036,
                  child: Text('Новости',
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
                padding: EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: width * 0.3,
                  height: width * 0.036,
                  // color: Colors.transparent,
                  child: Text(
                      'Директор департамента Валерий Корж рассказал в интервью журналу '
                      '«Справочник специалиста по охране труда», что ждет охрану труда в 2018 году.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.01,
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: width * 0.3,
                  height: width * 0.036,
                  // color: Colors.transparent,

                  child: Text(
                      'Разъяснение Роспотребнадзора по вопросу дублирования полномочий Минтруда '
                      'России и Роспотребнадзора при проведении специальной оценки условий '
                      'труда и производственного контроля.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.01,
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: width * 0.3,
                  height: width * 0.036,
                  // color: Colors.transparent,
                  child: Text(
                      '1 января 2017 года вступило в силу Постановление Главного государственного '
                      'врача РФ от 21 июня 2016 года №81 "Об утверждении '
                      'СанПиН 2.2.4.3359-16 "Санитарно-эпидемиологические требования к физическим '
                      'факторам на рабочих местах".',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.01,
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: width * 0.3,
                  height: width * 0.036,
                  child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black12,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Подробнее',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'PlayfairDisplay',
                            fontStyle: FontStyle.normal,
                            fontSize: width * 0.01),
                      )),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(25), 0, ScreenUtil().setWidth(25), 0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, ScreenUtil().setWidth(5), 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.center,
                  width: width * 0.3,
                  height: width * 0.036,
                  // color: Colors.red,
                  child: Text('О Нас',
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
                padding: EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: width * 0.3,
                  height: width * 0.036,
                  child: Text(
                      'На рынке оказания услуг по проведению специальной '
                      'оценки условий труда (ранее - аттестации рабочих мест)'
                      ' мы работаем уже более 5-ти лет.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.01,
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: width * 0.3,
                  height: width * 0.036,
                  child: Text(
                      'ООО «Центр Безопасности Труда» имеет все необходимые ресурсы (обученный персонал, '
                      'измерительное оборудование, нормативная база) для оказания услуг по проведению '
                      'специальной оценки условий труда.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.01,
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: width * 0.3,
                  height: width * 0.036,
                  child: Text(
                      'Несмотря на тот факт, что мы находимся в Тамбове, география наших работ весьма обширна и '
                      'охватывает не только весь тамбовский регион, но и выходит за его '
                      'пределы: Липецк, Санкт-Петербург, Москва, Когалым, Нижневартовск, Пермь, Смоленск,'
                      'Нижний Новгород и др.',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.01,
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, ScreenUtil().setWidth(5)),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: width * 0.3,
                  height: width * 0.036,
                  child: Text('Мы будем рады работать с Вами!',
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
          ),
        ),
      ],
    );
  }
}
