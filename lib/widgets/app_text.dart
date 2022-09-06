import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';

class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppText(
      {Key? key,
      this.size=14,
      required this.text,
      this.color = const Color.fromRGBO(101, 117, 141, 1)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w600
        ));
  }
}

class SecondAppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  SecondAppText(
      {Key? key,
      this.size=12,
      required this.text,
      this.color = const Color.fromRGBO(173, 172, 172, 1)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.w400
        ));
  }
}