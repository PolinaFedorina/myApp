import 'package:flutter/material.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/responsive_button.dart';

class CategoryMenCart extends StatelessWidget {
  const CategoryMenCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cartlightblue,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/mujkofta.jpg",
                ),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLargeText(
                  text: "Мужская одежда",
                  size: 16,
                  color: AppColors.textColor1,
                ),
                Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SecondAppText(text: "3.247"),
                    SizedBox(
                      width: 5,
                    ),
                    SecondAppText(text: "товара(ов)"),
                  ],
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
class CategoryWomCart extends StatelessWidget {
  const CategoryWomCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cartlightpurple,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/anarkali-platye.jpg",
                ),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLargeText(
                  text: "Женская одежда",
                  size: 16,
                  color: AppColors.textColor1,
                ),
                Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SecondAppText(text: "3.576"),
                    SizedBox(
                      width: 5,
                    ),
                    SecondAppText(text: "товара(ов)"),
                  ],
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

class CategoryChildCart extends StatelessWidget {
  const CategoryChildCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cartlightyellow,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/devplatye1.jpg",
                ),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLargeText(
                  text: "Детская одежда",
                  size: 16,
                  color: AppColors.textColor1,
                ),
                Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SecondAppText(text: "892"),
                    SizedBox(
                      width: 5,
                    ),
                    SecondAppText(text: "товара(ов)"),
                  ],
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


class CategoryMenShoesCart extends StatelessWidget {
  const CategoryMenShoesCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cartlightblue,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/krasovki.jpg",
                ),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLargeText(
                  text: "Мужская обувь",
                  size: 16,
                  color: AppColors.textColor1,
                ),
                Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SecondAppText(text: "307"),
                    SizedBox(
                      width: 5,
                    ),
                    SecondAppText(text: "товара(ов)"),
                  ],
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
class CategoryWomShoesCart extends StatelessWidget {
  const CategoryWomShoesCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cartlightpurple,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/pexels-photo-shoes.jpeg",
                ),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLargeText(
                  text: "Женская обувь",
                  size: 16,
                  color: AppColors.textColor1,
                ),
                Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SecondAppText(text: "325"),
                    SizedBox(
                      width: 5,
                    ),
                    SecondAppText(text: "товара(ов)"),
                  ],
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
class CategoryMenAksessCart extends StatelessWidget {
  const CategoryMenAksessCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cartlightblue,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/galstuk1.jpg",
                ),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLargeText(
                  text: "Мужские аксессуары",
                  size: 16,
                  color: AppColors.textColor1,
                ),
                Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SecondAppText(text: "141"),
                    SizedBox(
                      width: 5,
                    ),
                    SecondAppText(text: "товара(ов)"),
                  ],
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
class CategoryWomAksessCart extends StatelessWidget {
  const CategoryWomAksessCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.cartlightpurple,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "../asset/images/hat-womens.jpg",
                ),
                fit: BoxFit.fitHeight,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLargeText(
                  text: "Женские аксессуары",
                  size: 16,
                  color: AppColors.textColor1,
                ),
                Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SecondAppText(text: "401"),
                    SizedBox(
                      width: 5,
                    ),
                    SecondAppText(text: "товара(ов)"),
                  ],
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