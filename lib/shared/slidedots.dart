import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {

  final bool isActive;
  SlideDots(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal:10), 
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Color.fromRGBO(243, 216, 152, 1.0) : Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      )
    );
  }
}