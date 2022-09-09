import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_text.dart';
import 'package:my_own_app/widgets/style.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: lightprimary.withOpacity(0.8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("../asset/svg/button-one.svg",)
        ],
      ),
    );
  }
}


class ResponsiveButtonCat extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButtonCat({Key? key, this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.textColor2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 20,),
          AppText(text: "Перейти",color: AppColors.bigTextColor,size: 12,),
          SizedBox(width: 10,),
          SvgPicture.asset("../asset/svg/button-one.svg",)
        ],
      ),
    );
  }
}


class FireCartButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  FireCartButton({Key? key, this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: lightgrey,
        boxShadow: [const BoxShadow(color: grey,offset: const Offset(-4.0, 3.0),
        blurRadius: 4.0,
        blurStyle: BlurStyle.inner,
        spreadRadius: 0.0)]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(margin: const EdgeInsets.only(left: 2),
              width: 27,
              height: 27,
              decoration: BoxDecoration(
                color: primary,
                shape: BoxShape.circle,
                boxShadow: [const BoxShadow(color: grey,offset: const Offset(3.0, 1.0),
        blurRadius: 2.0,
        blurStyle: BlurStyle.solid,
        
        spreadRadius: 0.0)]
              ),
            ),
          ),
          Center(
            child: AppText(text: "Перейти к описанию",size: 8)),
          Center(
            child: Icon(Icons.add,color: primary)),
        ],
      ),
    );
  }
}