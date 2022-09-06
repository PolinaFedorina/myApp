import 'package:flutter/material.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_large_text.dart';
import 'package:my_own_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "background1.jpg",
    "background2.jpg",
    "background7.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("../asset/images/" + images[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 390, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "ДОБРО ПОЖАЛОВАТЬ"),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(
                          text: "Cоберите свой гардероб МЕЧТЫ.",
                          size: 19,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          child: AppText(
                              text:
                                  "Вы можете получить в жизни всё, что захотите, если будете одеваться для этого."),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ResponsiveButton(
                          width: 120,
                        ),
                      ],
                    ),
                    Column(
                        children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 3),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDots
                              ? AppColors.mainColor
                              : AppColors.textColor1.withOpacity(0.3),
                        ),
                      );
                    })),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
