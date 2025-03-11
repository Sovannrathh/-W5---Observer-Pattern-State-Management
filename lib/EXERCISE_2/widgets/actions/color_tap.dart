import 'package:flutter/material.dart';

enum CardType { red, blue }

class ColorTap extends StatelessWidget {
  final void Function() onTap;
  final CardType type;
  final Widget child;

  const ColorTap({
    super.key,
    required this.onTap,
    required this.type,
    required this.child,
  });

  Color get backgroundColor => type == CardType.red ? Colors.red : Colors.blue;

  @override
  Widget build(BuildContext context) {
    if (type == CardType.red) {
      print("Red color tap rebuilt");
    } else {
      print("Blue color tap rebuilt");
    }
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: 100,
        child: Center(child: child),
      ),
    );
  }
}
