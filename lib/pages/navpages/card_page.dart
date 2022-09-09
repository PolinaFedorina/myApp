import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/pages/navpages/home_page.dart';
import 'package:my_own_app/pages/navpages/main_page.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/buy_cart.dart';
import 'package:my_own_app/widgets/style.dart';

class MyCardPage extends StatelessWidget {
  const MyCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonBackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: GestureDetector(
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.textColor1,
                      ),
                      child: IconButton(
                        alignment: Alignment.center,
                        icon: SvgPicture.asset(
              "../asset/svg/arrowback.svg",
              color: white, height: 20,width: 20,
            ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => MainPage()));
                        },
                      ),
                    ),
                   onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }), 
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: AppLargeText(
                  text: "Корзина товаров",
                  color: AppColors.textColor1, size: 22,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      SecondAppText(text: "3"),
                      SizedBox(
                        width: 5,
                      ),
                      SecondAppText(text: "товара(ов)"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    children: [
                      AppText(
                        text: "Очистить",
                        color: AppColors.mainColor,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.clear,
                            color: AppColors.mainColor,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 360,
            height: 350,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 12,
                ),
                Cart(),
                SizedBox(
                  height: 12,
                ),
                Cart2(),
                SizedBox(
                  height: 12,
                ),
                Cart3(),
                SizedBox(
                  height: 12,
                ),
                Cart(),
                SizedBox(
                  height: 12,
                ),
                Cart2(),
                SizedBox(
                  height: 12,
                ),
                Cart3(),
              ],
            ),
          ),
          Summ(),
        ]),
      ),
    );
  }
}
