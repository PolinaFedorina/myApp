import 'package:flutter/material.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/style.dart';

class CartNewHome extends StatelessWidget {
  const CartNewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: primary,
                  ),
                  child: Center(
                      child: AppLargeText(
                    text: "NEW",
                    size: 10,
                  ))),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.favorite_border_sharp,
                  color: primary,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
            color: grey.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 7),
                    child: AppLargeText(
                      text: "500.00 TMT",
                      color: primary,
                      size: 18,
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: primary,
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bigTextColor,
                      size: 15.0,
                    ),
                  ),
                ]),
          ),
        ]);
  }
}
class CartSaleHome extends StatelessWidget {
  const CartSaleHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: primary,
                  ),
                  child: Center(
                      child: AppLargeText(
                    text: "-10%",
                    size: 10,
                  ))),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.favorite_border_sharp,
                  color: primary,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
            color: grey.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 7),
                    child: AppLargeText(
                      text: "220.00 TMT",
                      color: primary,
                      size: 18,
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: primary,
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bigTextColor,
                      size: 15.0,
                    ),
                  ),
                ]),
          ),
        ]);
  }
}
class CartHome extends StatelessWidget {
  const CartHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               Padding(
                padding: const EdgeInsets.only(right:5.0,left: 141),
                child: Icon(
                  Icons.favorite_border_sharp,
                  color: primary,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
            color: grey.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 7),
                    child: AppLargeText(
                      text: "150.00 TMT",
                      color: primary,
                      size: 18,
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: primary,
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bigTextColor,
                      size: 15.0,
                    ),
                  ),
                ]),
          ),
        ]);
  }
}

