import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
   final Color colour;
   CustomDivider({required this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colour,
      height: 21.0,width: 5.0,
    );
  }
}
