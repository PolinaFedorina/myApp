import 'package:flutter/material.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';


class CartHome1 extends StatelessWidget {
  const CartHome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width/2-20,
        height: 130,
        decoration: BoxDecoration(
          color: AppColors.mainTextColor.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
              image: AssetImage(
                "../asset/images/shoesjen.jpg",
              ),
              fit: BoxFit.cover,
            ),
        ),
        child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(Icons.favorite_border_sharp,color: AppColors.mainColor,),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,bottom: 2),
                        child: AppLargeText(text: "300.00 TMT",color: AppColors.mainColor,size: 16,),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15), ),
                          color: AppColors.mainColor,
                        ),
                        child: Icon(
                      Icons.add,
                      color: AppColors.bigTextColor,
                      size: 15.0,
                    ),
                      ),
                    ],
                  ),
                ],
                ),

        );
  }
}
class CartHome2 extends StatelessWidget {
  const CartHome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width/2-20,
        height: 130,
        decoration: BoxDecoration(
          color: AppColors.mainTextColor.withOpacity(0.3),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
              image: AssetImage(
                "../asset/images/male-wedding-shoes.jpg",
              ),
              fit: BoxFit.cover,
            ),
        ),
        child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15), ),
                          color: AppColors.mainColor,
                        ),
                        child: Center(child: AppLargeText(text: "NEW",size: 10,))
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.favorite_border_sharp,color: AppColors.mainColor,),
                      ),
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,bottom: 2),
                        child: AppLargeText(text: "500.00 TMT",color: AppColors.mainColor,size: 16,),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15), ),
                          color: AppColors.mainColor,
                        ),
                        child: Icon(
                      Icons.add,
                      color: AppColors.bigTextColor,
                      size: 15.0,
                    ),
                      ),
                    ],
                  ),
                ],
                ),
                );
                }
                }