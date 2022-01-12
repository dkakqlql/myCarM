import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/misc/colors.dart';
import 'package:tutorial/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key, this.width=120, this.isResponsive = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin: const EdgeInsets.only(left: 20),child: AppText(text: "Book Trip Now", color: Colors.white,)):Container(),
            //Image.asset("images.jfif")
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_forward_outlined, color: Colors.white),
                  Icon(Icons.arrow_forward_outlined, color: Colors.white),
                  Icon(Icons.arrow_forward_outlined, color: Colors.white)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
