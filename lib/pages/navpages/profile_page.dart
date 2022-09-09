import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_own_app/pages/navpages/home_page.dart';
import 'package:my_own_app/pages/navpages/main_page.dart';
import 'package:my_own_app/pages/setting_page.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/style.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
            icon: SvgPicture.asset(
              "../asset/svg/arrowback.svg",
              color: lightprimary, height: 20,width: 20,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MainPage()));
            }),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: lightprimary,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 10,
                ),
                AppText(
                  text: "Создать профиль",
                  size: 20,
                  color: black.withOpacity(0.8),
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: black.withOpacity(0.1),
                              offset: Offset(0, 10),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-c4L2E9SWmMJQGPBpoe40ABgwvLJNcMwR08nEqRVOIjWozJ_ur5pidgpjD2KaudfCo-c&usqp=CAU"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: lightprimary,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                buildTextField("Полное имя", "Имя Фамилия", false),
                buildTextField("Телефон номер", "+9936* ** ** **", false),
                buildTextField("Пароль", "*******", true),
                buildTextField("Локация", "Туркменистан, Ашхабад", false),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlineButton(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {},
                      child: Text(
                        "ОТМЕНА",
                        style: TextStyle(
                            fontSize: 14, letterSpacing: 2.2, color: black),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: lightprimary,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      elevation: 2,
                      child: Text(
                        "СОХРАНИТЬ",
                        style: TextStyle(
                            fontSize: 14, letterSpacing: 2.2, color: white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: grey,
                  ),
                )
              : null,
          contentPadding: const EdgeInsets.only(bottom: 3),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
      ),
    );
  }
}
