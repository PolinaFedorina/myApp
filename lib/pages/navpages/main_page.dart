import 'package:flutter/material.dart';
import 'package:my_own_app/pages/navpages/card_page.dart';
import 'package:my_own_app/pages/navpages/categories_page.dart';
import 'package:my_own_app/pages/navpages/favorite_things_page.dart';
import 'package:my_own_app/pages/navpages/home_page.dart';
import 'package:my_own_app/pages/navpages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    CategoriesPage(),
    MyCardPage(),
    FavoriteThingsPage(),
    ProfilPage(),
    ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                label: "Главная", icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: "Категории", icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(
                label: "Корзина",
                icon: Icon(Icons.shopping_cart_checkout_outlined)),
            BottomNavigationBarItem(
                label: "Отмеченные",
                icon: Icon(Icons.favorite_border_outlined)),
            BottomNavigationBarItem(
                label: "Профиль", icon: Icon(Icons.person_outlined)),
          ]),
    );
  }
}
