import 'package:flutter/material.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/cart_home_page.dart';
import 'package:my_own_app/widgets/style.dart';

class CarouselLoading extends StatefulWidget {
  const CarouselLoading({Key? key}) : super(key: key);

  @override
  State<CarouselLoading> createState() => _CarouselLoadingState();
}

class _CarouselLoadingState extends State<CarouselLoading> {
  int currentIndex = 0;
  final PageController controller = PageController();
  List<String> images = [
    "../asset/images/banerone.png",
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
          color: isSelected ? primary : grey,
        ),
      ),
    );
  }
}