import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View6 extends StatefulWidget {
  View6({Key? key}) : super(key: key);

  @override
  _View6State createState() => _View6State();
}

class _View6State extends State<View6> {
  var width;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    setState(() {
      width = size;
    });
    return Row(
      children: <Widget>[
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, width * 0.012, 0, 0),
              alignment: Alignment.center,
              width: width * 0.9,
              height: width * 0.026,
              // color: Colors.redAccent,
              child: Text('  Copyright © 2022 ООО "Центр Безопасности Труда". ',
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: width * 0.01,
                    // fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
