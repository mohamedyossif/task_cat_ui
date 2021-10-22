import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  final label;
  CustomElevatedButton({this.label});
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: null,
      child: Text('$label'),
    );
  }
}
