import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final void Function() onPressed;
  final String title;

  const ButtonText({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black12,
          textStyle: TextStyle(fontSize: 16),
        ),
        onPressed: onPressed,
        child:  Text(title,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: 'PlayfairDisplay',
              fontStyle: FontStyle.normal,
              fontSize: 16.0),
        ));
  }
}