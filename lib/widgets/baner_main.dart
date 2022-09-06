import 'package:flutter/material.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/cart_home_page.dart';

class CarouselLoading extends StatefulWidget {
  const CarouselLoading({Key? key}) : super(key: key);

  @override
  State<CarouselLoading> createState() => _CarouselLoadingState();
}

class _CarouselLoadingState extends State<CarouselLoading> {
  int currentIndex = 0;
  final PageController controller = PageController();
  List<String> images = [
    "https://cdn.dribbble.com/users/2577653/screenshots/14630022/media/e58183c7acd7c89c82bdfae2dbc3458d.png?compress=1&resize=400x300&vertical=top",
    "https://cdn.dribbble.com/users/2441743/screenshots/16943821/media/64af421a37a752f827ff6402feb5ce22.jpg?compress=1&resize=400x300&vertical=top",
    "https://cdn.dribbble.com/users/4123927/screenshots/16733896/media/6c86b5b10ff15805b9c3548d5d3b0ace.jpg?compress=1&resize=400x300&vertical=top",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
              setState(() {
                currentIndex = index % images.length;
              });
            }, itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.network(
                    images[index % images.length],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildeIndicator(currentIndex == i)
            ],
          ),
        ],
          );
  }

  Widget buildeIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Container(
        height: isSelected ? 8 : 5,
        width: isSelected ? 8 : 5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColors.mainColor : AppColors.mainTextColor,
        ),
      ),
    );
  }
}


class CarouselTextOne extends StatefulWidget {
  const CarouselTextOne({Key? key}) : super(key: key);

  @override
  State<CarouselTextOne> createState() => _CarouselTextOneState();
}

class _CarouselTextOneState extends State<CarouselTextOne> {
  int currentIndex = 0;
  final PageController controller = PageController();
  List<String> names = [
    "Популярные",
    "Новое",
    "Акции",
    "Горящие предложения",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            height: 170,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
              setState(() {
                currentIndex = index % names.length;
              });
            }, itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  height: 170,
                  width: double.infinity,
                  child: Column(
                    children: [
                      AppText(text:
                        names[index % names.length],
                        ),
                        SizedBox(height: 10,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CartHome1(),
                            CartHome2(),
                          ],
                        ),
                    ],
                  ),
                ),
              );
            }),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < names.length; i++)
                buildeIndicator(currentIndex == i)
            ],
          ),
        ],
          );
  }

  Widget buildeIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Container(
        height: isSelected ? 8 : 5,
        width: isSelected ? 8 : 5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColors.mainColor : AppColors.mainTextColor,
        ),
      ),
    );
  }
}