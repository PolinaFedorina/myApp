import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_own_app/const/AppColors.dart';
import 'package:my_own_app/widgets/app_text.dart';

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
        color: AppColors.textColor2,
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
