import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return Row(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, width * 0.01, 0, 0),
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
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, width * 0.01, width * 0.01, width * 0.01),
                  alignment: Alignment.topCenter,
                  width: width * 0.4,
                  height: width * 0.06,
                  // color: Colors.white60,
                  child:
                      Text('Мы рады приветствовать Вас на нашем сайте!',
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
                  padding: EdgeInsets.fromLTRB(0, 0, width * 0.01, 0),
                  alignment: Alignment.topCenter,
                  width: width * 0.4,
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
                        fontSize: width * 0.012,
                        fontStyle: FontStyle.normal,
                      )),
                ),
              ],
            )),
      ],
    );
  }
}
