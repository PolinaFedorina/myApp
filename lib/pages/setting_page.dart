import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/style.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: lightprimary,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(children: [
          AppText(
            text: "Настройки",
            size: 20,
            color: black.withOpacity(0.8),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: lightprimary,
              ),
              SizedBox(
                width: 8,
              ),
              AppLargeText(
                text: "Профиль",
                size: 16,
                color: black.withOpacity(0.8),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          buildAccountOptionRow(context, "Поменять пароль"),
          buildAccountOptionRow(context, "Настройка содержимого"),
          buildAccountOptionRow(context, "Социальное обеспечение"),
          buildAccountOptionRow(context, "Выбрать язык"),
          buildAccountOptionRow(context, "Конфиденциальность и безопасность"),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.volume_up_outlined,
                color: lightprimary,
              ),
              SizedBox(
                width: 8,
              ),
              AppLargeText(
                text: "Уведомления",
                size: 16,
                color: black.withOpacity(0.8),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          buildNotificationOptionRow("Новое для вас", true),
          buildNotificationOptionRow("Активность аккаунта", true),
          buildNotificationOptionRow("Возможности", false),
          SizedBox(
            height: 30,
          ),
          Center(
            child: OutlineButton(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {},
              child: Text(
                "Выйти",
                style:
                    TextStyle(fontSize: 16, letterSpacing: 2.2, color: black),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          text: title,
          color: grey,
          size: 14,
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            )),
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: AppText(text: title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText(text: "Вариант 1"),
                    AppText(text: "Вариант 2"),
                    AppText(text: "Вариант 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: AppText(text: "Закрыть")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: title,
              size: 14,
              color: grey,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: grey,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
