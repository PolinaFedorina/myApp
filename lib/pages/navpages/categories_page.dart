import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/pages/navpages/home_page.dart';
import 'package:my_own_app/pages/navpages/main_page.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/buy_cart.dart';
import 'package:my_own_app/widgets/categories_card.dart';
import 'package:my_own_app/widgets/style.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: AppLargeText(
                  text: "Категории товаров",
                  color: AppColors.textColor1,size: 22,
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
                      SecondAppText(text: "8.889"),
                      SizedBox(
                        width: 5,
                      ),
                      SecondAppText(text: "товара(ов)"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 360,
            height: 510,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 12,
                ),
                CategoryMenCart(),
                SizedBox(
                  height: 12,
                ),
                CategoryWomCart(),
                SizedBox(
                  height: 12,
                ),
                CategoryChildCart(),
                SizedBox(
                  height: 12,
                ),
                CategoryMenShoesCart(),
                SizedBox(
                  height: 12,
                ),
                CategoryWomShoesCart(),
                SizedBox(
                  height: 12,
                ),
                CategoryMenAksessCart(),
                SizedBox(
                  height: 12,
                ),
                CategoryWomAksessCart(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
