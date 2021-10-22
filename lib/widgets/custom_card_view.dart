import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:screen_task1/utilities/constants1.dart';
import 'package:screen_task1/widgets/custom_circularAvatar_teams.dart';
import 'package:screen_task1/widgets/custom_container.dart';
int multiply=0;
class CustomCardView extends StatelessWidget {
  final width,
      height,
       index,
     lastTextStack,
      title,
      ColourText,
      colourPercent,
      valuePercent,
      textPercent,
      text;
  final Color colourContainer;
  CustomCardView(
      {this.width,
      this.height,
        this.index,
        this.lastTextStack,
      this.title,
      this.colourPercent,
      this.ColourText,
      required this.colourContainer,
      this.valuePercent,
      this.text,
      this.textPercent});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: kRoundedCard,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                height: height * 0.06,
                width: width * 0.15,
                child: Text(
                  title,
                  style: kJustBoldText,
                ),
              ),
              CircularPercentIndicator(
                radius: 55.0,
                lineWidth: 6.0,
                percent: valuePercent,
                center: Text(textPercent),
                progressColor: colourPercent,
              )
            ]),
            CustomContainer(width: width,height: height,text: text,ColourText: ColourText,colourContainer: colourContainer,),
            Text(' Teams',style: kSubTitleTextStyle,),
            CustomCircularAvatarTeams(width: width,count: index,more: lastTextStack,),
          ],
        ),
      ),
    );
  }
}
