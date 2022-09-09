import 'package:flutter/material.dart';
import 'package:my_own_app/widgets/style.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: Column(
        children: [
          DrawerHeader(
            child: ListTile(
              title: Column(
                children: [
                  Image.asset(
                    "../asset/images/znak.PNG",
                    width: 80,
                    height: 60,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Мой Номер",
                    style: TextStyle(
                        color: black,
                        decoration: TextDecoration.underline,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "+993 63 27 49 64",
                    style: TextStyle(
                        color: primary,
                        decorationStyle: TextDecorationStyle.wavy,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 225,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.cottage_sharp,
                        size: 29,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Главная",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.new_label_outlined,
                        size: 23,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 54),
                        child: Text(
                          "Новые предложения",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: lightprimary,
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                          child: Text(
                            "119",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.sailing_outlined,
                        size: 29,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 70),
                        child: Text(
                          "Товары по акции",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: lightprimary,
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                          child: Text(
                            "362",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_basket_outlined,
                        size: 28,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 104),
                        child: Text(
                          "Настройки корзины",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.newspaper,
                        size: 28,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 127),
                        child: Text(
                          "Новости",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: lightprimary,
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                          child: Text(
                            "550",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_outlined,
                        size: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          "Добавить комментарии",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          "Настройки приложения",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.share,
                        size: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          "Поделиться",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        size: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          "Администратор",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      );
  }
}
