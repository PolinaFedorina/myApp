import 'package:flutter/cupertino.dart';
import 'package:my_own_app/const/AppColors.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppLargeText(
      {Key? key,
      this.size = 25,
      required this.text,
      this.color = const Color.fromRGBO(255, 255, 255, 1)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ));
  }
}

class CardLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  CardLargeText(
      {Key? key,
      this.size = 25,
      required this.text,
      this.color = AppColors.textColor1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold,
        ));
  }
}