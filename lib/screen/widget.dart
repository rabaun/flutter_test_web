import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _value = 0;
  static final List<GlobalKey> _key = List.generate(20, (index) => GlobalKey());
  final List<Widget> buttons = List.generate(20, (index) => RaisedButton(onPressed: () {},
    color: index % 2 == 0 ? Colors.grey : Colors.white,
    child: Text("Button No # ${index + 1}", key: _key[index]),
  ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buttons,
            ),
          ),
          DropdownButton(
            value: _value,
            items: List.generate(
              20,
                  (index) => DropdownMenuItem(
                  child: Text("Goto Button # ${index + 1}"), value: index),
            ),
            onChanged: (dynamic value) {
              setState(() {
                _value = value;
                print("calling");
                Scrollable.ensureVisible(_key[value].currentContext!);
              });
            },
          )
        ],
      ),
    );
  }
}