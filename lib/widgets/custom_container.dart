import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  final width,height,text,ColourText,colourContainer;
  CustomContainer({this.width,this.height,this.text,this.ColourText,this.colourContainer});
  @override
  Widget build(BuildContext context) {
    return   Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 16.0, top: 10.0),
      width: width * 0.2,
      height: height * 0.04,
      child: Text(text, style: TextStyle(color: ColourText, fontSize: 15.0),
      ),
      decoration: BoxDecoration(color: colourContainer.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
