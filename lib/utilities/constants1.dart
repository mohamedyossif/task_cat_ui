import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle kTitleTextStyle=TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

TextStyle kSubTitleTextStyle=TextStyle(
  color: Colors.grey,
  fontSize: 15.0,
);
TextStyle kLabelElevatedButton=TextStyle(
  color: Colors.green,
      fontSize: 18.0,
);
TextStyle k25TextStyle=TextStyle(
  fontSize: 70.0,
  fontWeight: FontWeight.bold,
);
TextStyle kSeptemberTextStyle=TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
);
TextStyle kPercentText=TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.grey
);
TextStyle kAstraliansTitleTextStyle=TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 15.0
);
TextStyle kSendTextStyle=TextStyle(
    color: Colors.black,
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline);
TextStyle kJustBoldText=TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0);
TextStyle kProjectTitleTextStyle=TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
RoundedRectangleBorder kRoundedCard= RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20.0),
);

ButtonStyle kElevatedButton =ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
      Colors.green[100]!.withOpacity(0.8),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        )
    )
);