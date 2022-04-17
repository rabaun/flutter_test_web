import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionScrolleView extends StatelessWidget {
  const ActionScrolleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.6,
            height: width * 0.183,
            color: Colors.red,
            alignment: Alignment.center,
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text(
                  'Главная',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.01,
                  ),
                )),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.6,
            height: width * 0.183,
            color: Colors.red,
            alignment: Alignment.center,
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text(
                  'О компании',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.01,
                  ),
                )),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.6,
            height: width * 0.183,
            color: Colors.red,
            alignment: Alignment.center,
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text(
                  'СОУТ',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.01,
                  ),
                )),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.6,
            height: width * 0.183,
            color: Colors.red,
            alignment: Alignment.center,
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text(
                  'ПК',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.01,
                  ),
                )),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.6,
            height: width * 0.183,
            color: Colors.red,
            alignment: Alignment.center,
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text(
                  'Документы',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.01,
                  ),
                )),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: width * 0.6,
            height: width * 0.183,
            color: Colors.red,
            alignment: Alignment.center,
            child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: Text(
                  'Контакты',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.01,
                  ),
                )),
          ),
        ),
      ],
    );
  }
}