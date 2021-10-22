import 'package:flutter/material.dart';
class CustomMaterialButton extends StatelessWidget {
  final iconData;
  CustomMaterialButton({this.iconData});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 14.0,
      color: Colors.white,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,
      onPressed: (){},child:  Icon(iconData,size: 24.0,),elevation: 3.0,);
  }
}
