import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_web/screen/view6.dart';
import 'package:flutter_app_web/screen/scrolle_drawer.dart';
import 'package:flutter_app_web/screen/view1.dart';
import 'package:flutter_app_web/screen/view2.dart';
import 'package:flutter_app_web/screen/view3.dart';
import 'package:flutter_app_web/screen/view4.dart';
import 'package:flutter_app_web/screen/view5.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final title;

  @override
  _HomePageState createState() => _HomePageState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('title', title));
  }
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool _showBackToTopButton = false;

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  void _scrollPosition(double position) {
    _scrollController.animateTo(position,
        duration: const Duration(seconds: 1), curve: Curves.ease);
  }

  void _scrollDown() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  List<dynamic> list = [
    View1(),
    View2(),
    View3(),
    View4(),
    View5(),
    View6(),
  ];
  var width;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    setState(() {
      width = size;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: const Image(
                  image: AssetImage('logo.png'),
                  // width: MediaQuery.of(context).size.width,
                ),
              )),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              width: width * 0.132,
              height: width * 0.072,
              alignment: Alignment.centerLeft,
              child: Text('ООО "Центр Безопасности Труда"',
                  textDirection: TextDirection.ltr,
                  // текст слева направо
                  textAlign: TextAlign.center,
                  // выравнивание по центру
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.015,
                    fontStyle: FontStyle.normal, // высота шрифта 26
                  )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: width * 0.132,
              height: width * 0.072,
              alignment: Alignment.center,
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () => _scrollPosition(width * 0.0),
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
            flex: 2,
            child: Container(
              width: width * 0.132,
              height: width * 0.072,
              alignment: Alignment.center,
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () => _scrollPosition(width * 0.2),
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
            flex: 2,
            child: Container(
              width: width * 0.132,
              height: width * 0.072,
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
            flex: 2,
            child: Container(
              width: width * 0.132,
              height: width * 0.072,
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
            flex: 2,
            child: Container(
              width: width * 0.132,
              height: width * 0.072,
              alignment: Alignment.center,
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () => _scrollPosition(width * 0.4),
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
            flex: 2,
            child: Container(
              width: width * 0.132,
              height: width * 0.072,
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
      ),
      drawer: const Drawer(
        elevation: 16.0,
        child: DrawerScrolleView(),
      ),
      body: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Container(child: list[index]),
          );
        },
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              child: Icon(Icons.arrow_upward),
            ),
    );
  }
}
