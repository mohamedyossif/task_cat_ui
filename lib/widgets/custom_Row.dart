import 'package:flutter/material.dart';
import 'package:screen_task1/utilities/constants1.dart';
class CustomRow extends StatelessWidget {
  final width;
  final text;
  CustomRow({this.width,this.text});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          child: Text(text,style: kJustBoldText),
          width: width*0.4,
        ),
        Icon(
          Icons.list_outlined,
          size: 15,
          color: Colors.grey,
        ),
      ],
    );
  }
}
