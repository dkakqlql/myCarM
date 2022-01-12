import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtoms extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text = "Hi";
  IconData? icon;
  bool isIcon;
  AppButtoms({Key? key,
    required this.size, required this.color, required this.backgroundColor, required this.borderColor,
  this.icon, this.text, this.isIcon=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(
              color: borderColor,
              width: 1.0
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor
      ),
      child: isIcon==false?Center(child: AppText(text: text!, color: color)):Center(child: Icon(icon, color: color)),
    );
  }
}
