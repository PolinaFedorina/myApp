import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/baner_main.dart';
import 'package:my_own_app/widgets/cart_fire.dart';
import 'package:my_own_app/widgets/cart_home_page.dart';
import 'package:my_own_app/widgets/circle_indicator.dart';
import 'package:my_own_app/widgets/style.dart';
import 'package:my_own_app/widgets/tabbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonBackground,
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: [
              Icon(
                Icons.menu,
                size: 30,
                color: Colors.black54,
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("../asset/images/znak.PNG"))),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: 370,
          height: MediaQuery.of(context).size.height - 170,
          child: ListView(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 35,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                        ),
                        child: Center(
                            child: SecondAppText(
                                text: "Категория, бренд и многое другое")),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        height: 35,
                        width: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                        ),
                        child: Center(
                            child: SvgPicture.asset(
                          "../asset/svg/Lupa.svg",
                          height: 25,
                          width: 23.1,
                          color: AppColors.mainTextColor,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CarouselLoading(),
              SizedBox(
                height: 20,
              ),
              //tabbar
              TapBarWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  AppLargeText(text: "Горящие товары",size: 18,color: black
                  ),
                  AppText(text: "Смотреть все", color: grey,size: 10,)
                ],),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_,index) {
                  return CartSaleHome2();

                    
                }
                ),
                ),
                ],
          ),
        ),
        ]),
    );
  }
}
