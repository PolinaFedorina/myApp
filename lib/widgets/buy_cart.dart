import 'package:flutter/material.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 130,
      decoration: BoxDecoration(
        color: AppColors.cartlightblue,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/jolrubashka.png",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppLargeText(
                text: "Женская классическая\n шифоновая рубашка",
                size: 16,
                color: AppColors.textColor1,
              ),
              SizedBox(
                height: 10,
              ),
              SecondAppText(text: "Размер: М"),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.mainTextColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bigTextColor,
                      size: 15.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: AppText(
                      text: "1",
                      color: AppColors.textColor1,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.starColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.textColor1,
                      size: 15.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: "250.00",
                          color: AppColors.textColor1,
                          size: 19,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SecondAppText(
                          text: "ТМТ",
                          color: AppColors.textColor1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class Cart2 extends StatelessWidget {
  const Cart2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 130,
      decoration: BoxDecoration(
        color: AppColors.cartlightyellow,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/sharf.jpg",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppLargeText(
                text: "Женский легкий\n весенне-осенний шарф",
                size: 16,
                color: AppColors.textColor1,
              ),
              SizedBox(
                height: 10,
              ),
              SecondAppText(text: "Размер: Стандарт"),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.mainTextColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bigTextColor,
                      size: 15.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: AppText(
                      text: "1",
                      color: AppColors.textColor1,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.starColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.textColor1,
                      size: 15.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: "100.00",
                          color: AppColors.textColor1,
                          size: 19,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SecondAppText(
                          text: "ТМТ",
                          color: AppColors.textColor1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class Cart3 extends StatelessWidget {
  const Cart3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 130,
      decoration: BoxDecoration(
        color: AppColors.cartlightpurple,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/sumka.jpeg",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              AppLargeText(
                text: "Женская классическая\n сумка на плечо",
                size: 16,
                color: AppColors.textColor1,
              ),
              SizedBox(
                height: 10,
              ),
              SecondAppText(text: "Размер: 25x40"),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.mainTextColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bigTextColor,
                      size: 15.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: AppText(
                      text: "1",
                      color: AppColors.textColor1,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.starColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.textColor1,
                      size: 15.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: "350.00",
                          color: AppColors.textColor1,
                          size: 19,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SecondAppText(
                          text: "ТМТ",
                          color: AppColors.textColor1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class Summ extends StatelessWidget {
  const Summ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            AppColors.textColor1,
            AppColors.bigTextColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                AppLargeText(
                  text: "Общая сумма :",
                  size: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: "1400.00",
                        color: AppColors.textColor1,
                        size: 19,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SecondAppText(
                        text: "ТМТ",
                        color: AppColors.textColor1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                AppLargeText(
                  text: "Оплата за доставку :",
                  size: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: "20.00",
                        color: AppColors.textColor1,
                        size: 19,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SecondAppText(
                        text: "ТМТ",
                        color: AppColors.textColor1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Divider(
            thickness: 2,
            color: AppColors.textColor1,
            indent: 0,
            endIndent: 0,
          ),
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                SizedBox(
                  width: 78,
                ),
                AppLargeText(
                  text: "Итого :",
                  size: 18,
                  color: AppColors.textColor1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: "1420.00",
                        color: AppColors.textColor1,
                        size: 19,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SecondAppText(
                        text: "ТМТ",
                        color: AppColors.textColor1,
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
