import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_web/image/zoom_image4.dart';

class View5 extends StatefulWidget {
  View5({Key? key}) : super(key: key);

  @override
  _View5State createState() => _View5State();
}

class _View5State extends State<View5> {
  var width;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    setState(() {
      width = size;
    });
    return Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(width * 0.07, 0, 0, 0),
                  alignment: Alignment.topLeft,
                  width: width * 0.45,
                  height: width * 0.03,
                  child: Text('Как нас найти',
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.018,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )),
                ),
                const Divider(
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Container(
                  child: ZoomImage4(),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(width * 0.07, 0, 0, 0),
                    alignment: Alignment.topLeft,
                    width: width * 0.45,
                    height: width * 0.03,
                    child: Text('Контактная информация',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.018,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  Container(
                    width: width * 0.45,
                    height: width * 0.025,
                    child: Text('Общество с ограниченной ответственностью "Центр Безопасности Труда" ',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.012,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  Container(
                    width: width * 0.45,
                    height: width * 0.025,
                    child: Text('ИНН: 6829121030 ',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.012,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  Container(
                    width: width * 0.45,
                    height: width * 0.025,
                    child: Text('КПП: 6829121030 ',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.012,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  Container(
                    width: width * 0.45,
                    height: width * 0.025,
                    child: Text('Телефон: +7(4752)73-44-06; ',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.012,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  Container(
                    width: width * 0.45,
                    height: width * 0.025,
                    child: Text('Email: cbt-tambov@yandex.ru ',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.012,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  const Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: width * 0.45,
                    height: width * 0.025,
                    child: Text(
                        '392014, Тамбовская область, г. Тамбов, ул. Киквидзе, д. 37 к. а, офис 201, 205',
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: width * 0.012,
                          // fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                ],
              )),
        ]);
  }
}
