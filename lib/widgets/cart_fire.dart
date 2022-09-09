import 'package:flutter/material.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/responsive_button.dart';
import 'package:my_own_app/widgets/style.dart';

class CartSaleHome2 extends StatelessWidget {
  const CartSaleHome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "../asset/images/detsplatye.jpg",
      "../asset/images/zapanki.jpg",
      "../asset/images/kostum1.jpg",
      "../asset/images/men-clothers.png",
    ];
    List<String> sale = ["-10%", "-20%", "-25%"];
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
      ),
      width: MediaQuery.of(context).size.width - 30,
      height: 150,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(15)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        image[0],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: lightblue,
                        ),
                        child: Center(
                          child: AppLargeText(
                            text: sale[1],
                            size: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          text: "Категория: \nЖенская одежда",
                          color: black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.favorite_border_sharp,
                            color: lightblue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppLargeText(
                      text: "262.50 TMT",
                      color: black,
                      size: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "350.00 TMT",
                      style: TextStyle(
                          color: grey,
                          fontSize: 12,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FireCartButton(width: 150),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
