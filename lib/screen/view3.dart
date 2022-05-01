import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class View3 extends StatefulWidget {
  View3({Key? key}) : super(key: key);

  @override
  _View3State createState() => _View3State();
}

class _View3State extends State<View3> {
  var width;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    setState(() {
      width = size;
    });
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(width * 0.03, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.center,
                      width: width * 0.4,
                      height: width * 0.05,
                      child: Text('Новости',
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
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.topLeft,
                      width: width * 0.4,
                      height: width * 0.05,
                      // color: Colors.transparent,
                      child: Text(
                          'Директор департамента Валерий Корж рассказал в интервью журналу '
                          '«Справочник специалиста по охране труда», что ждет охрану труда в 2018 году.',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.012,
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.topLeft,
                      width: width * 0.4,
                      height: width * 0.05,
                      // color: Colors.transparent,
                      child: Text(
                          'Разъяснение Роспотребнадзора по вопросу дублирования полномочий Минтруда '
                          'России и Роспотребнадзора при проведении специальной оценки условий '
                          'труда и производственного контроля.',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.012,
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.topLeft,
                      width: width * 0.4,
                      height: width * 0.05,
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
                            fontSize: width * 0.012,
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.topLeft,
                      width: width * 0.4,
                      height: width * 0.05,
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
                              fontSize: width * 0.012,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(width * 0.03, 0, width * 0.03, 0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.center,
                      width: width * 0.4,
                      height: width * 0.05,
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
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.topLeft,
                      width: width * 0.4,
                      height: width * 0.05,
                      child: Text(
                          'На рынке оказания услуг по проведению специальной '
                          'оценки условий труда (ранее - аттестации рабочих мест)'
                          ' мы работаем уже более 5-ти лет.',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.012,
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.topLeft,
                      width: width * 0.4,
                      height: width * 0.05,
                      child: Text(
                          'ООО «Центр Безопасности Труда» имеет все необходимые ресурсы (обученный персонал, '
                          'измерительное оборудование, нормативная база) для оказания услуг по проведению '
                          'специальной оценки условий труда.',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.012,
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.topLeft,
                      width: width * 0.4,
                      height: width * 0.05,
                      child: Text(
                          'Несмотря на тот факт, что мы находимся в Тамбове, география наших работ весьма обширна и '
                          'охватывает не только весь тамбовский регион, но и выходит за его '
                          'пределы: Липецк, Санкт-Петербург, Москва, Когалым, Нижневартовск, Пермь, Смоленск,'
                          'Нижний Новгород и др.',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: width * 0.012,
                            fontStyle: FontStyle.normal,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.01),
                      alignment: Alignment.topLeft,
                      width: width * 0.4,
                      height: width * 0.05,
                      child: Text('Мы будем рады работать с Вами!',
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
            )),
      ],
    );
  }
}
