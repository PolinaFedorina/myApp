import 'package:flutter/material.dart';
import 'package:my_own_app/pages/navpages/home_page.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/style.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: neongreen,
          width: double.infinity,
          height: double.infinity,
          child: Stack(children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  color: neongreen,
                  image: DecorationImage(
                      image: AssetImage("../asset/images/winter-boots.png"),
                      fit: BoxFit.contain),
                ),
              ),
            ),
            Positioned(
              // left: 20,
              top: 10,
              child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 50,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 20,color: white,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                          ),
                        ),
                        Center(
                            child: AppText(
                          text: "Женские",
                          color: black.withOpacity(0.5),
                        )),
                        Center(
                            child: AppText(
                          text: "Мужские",
                          color: lightprimary,
                        )),
                        Center(
                            child: AppText(
                          text: "Спортивные",
                          color: black.withOpacity(0.5),
                        )),
                        Stack(children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: lightprimary,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Icon(
                              Icons.add_shopping_cart_rounded,
                              color: white,
                              size: 25,
                            )),
                          ),
                          Positioned(
                            right: 1,
                            top: 1,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                  color: lightyellow,
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 2, color: white)),
                              child: Center(
                                child: AppText(
                                  text: "0",
                                  size: 12,
                                  color: lightprimary,
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
            ),),
            Positioned(
            top: 330,
            left: 0,
            child: Stack(
              children: [Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                decoration: BoxDecoration(color: lightprimary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
              
                ),
              ),
               Positioned(height: 80,
                top: -10,
                left: 110,
                child: Container(
                width: 170,
                height: 60,
                color: white,
              ),),
              ]
            ),),
          ],),),
    );
  }
}
