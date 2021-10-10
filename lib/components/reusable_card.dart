import 'package:flutter/material.dart';
import 'package:hawkeye/theme.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, required this.cardChild, this.onTap, this.margin});

  final Color color;
  final Widget cardChild;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: themePrimaryColor.withAlpha(30),
        onTap: onTap,
        child: SizedBox(
          height: 150,
          child: cardChild,
        ),
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}