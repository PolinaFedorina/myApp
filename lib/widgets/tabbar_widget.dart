import 'package:flutter/material.dart';
import 'package:my_own_app/widgets/cart_home_page.dart';
import 'package:my_own_app/widgets/circle_indicator.dart';
import 'package:my_own_app/widgets/style.dart';

class TapBarWidget extends StatefulWidget {
  const TapBarWidget({Key? key}) : super(key: key);

  @override
  State<TapBarWidget> createState() => _TapBarWidgetState();
}

class _TapBarWidgetState extends State<TapBarWidget>
    with TickerProviderStateMixin {
  List<String> image = [
    "../asset/images/shlapawom.jpg",
    "../asset/images/winter-boots.png",
    "../asset/images/percatki.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 30, right: 20),
              controller: _tabController,
              labelColor: primary,
              unselectedLabelColor: grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: CircleTabIndicator(color: primary, radius: 4),
              tabs: [
                Tab(
                  text: "Популярные",
                ),
                Tab(
                  text: "Новое",
                ),
                Tab(
                  text: "Акции",
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 150,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      right: 15,
                      top: 10,
                    ),
                    width: 170,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: white,
                      image: DecorationImage(
                        image: AssetImage(
                          image[0],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CartHome(),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      right: 15,
                      top: 10,
                    ),
                    width: 170,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: white,
                      image: DecorationImage(
                        image: AssetImage(
                          image[1],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CartNewHome(),
                  );
                },
              ),
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      right: 15,
                      top: 10,
                    ),
                    width: 170,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: white,
                      image: DecorationImage(
                        image: AssetImage(
                          image[2],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CartSaleHome(),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
