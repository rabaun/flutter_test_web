import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScrolleView extends StatelessWidget {
  const ScrolleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ScreenUtil().screenWidth;
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('ООО "Центр Безопасности Труда"',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'PlayfairDisplay',
                fontStyle: FontStyle.normal,
                fontSize: width * 0.01,
              )),
          accountEmail: Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Column(children: [
              Text('email: cbt-tambov@yandex.ru',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.01,
                  )),
              Text('тел.: +7 (4752) 73-44-06',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'PlayfairDisplay',
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.01,
                  )),
            ]),
          ),
          currentAccountPicture: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Image(
              image: AssetImage('logo.png'),
              // width: MediaQuery.of(context).size.width,
            ),
          ),
          otherAccountsPictures: const <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("Fujjy"),
            )
          ],
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