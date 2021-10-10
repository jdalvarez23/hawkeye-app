import 'package:flutter/material.dart';
import 'package:hawkeye/theme.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, required this.cardChild, this.onTap, this.margin, this.height = 150});

  final Color color;
  final Widget cardChild;
  final EdgeInsetsGeometry? margin;
  final double? height;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: themePrimaryColor.withAlpha(30),
        onTap: onTap,
        child: SizedBox(
          height: height,
          child: cardChild,
        ),
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}