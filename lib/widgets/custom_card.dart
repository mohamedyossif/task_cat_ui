import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:screen_task1/utilities/constants1.dart';
import 'package:screen_task1/widgets/custom_circularAvatar_teams.dart';
import 'package:screen_task1/widgets/custom_container.dart';
import 'package:screen_task1/widgets/custom_divider.dart';

class CustomCard extends StatelessWidget {
  final width,
      height,
      textContainer1,
      colourTextContainer1,
      colourContainer1,
      textContainer2,
      colourTextContainer2,
      colourContainer2,
      colourDivider,
      title,
      trailling,
      percent,
      index;
  CustomCard(
      {this.width,
      this.height,
      this.textContainer1,
      this.colourTextContainer1,
      this.colourContainer1,
      this.textContainer2,
      this.colourTextContainer2,
      this.colourContainer2,
      this.colourDivider,
      this.title,
      this.trailling,
      this.index,
      this.percent});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: kRoundedCard,
        child: Padding(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Row(
            children: [
              CustomContainer(
                width: width,
                height: height,
                text: textContainer1,
                colourContainer: colourContainer1,
                ColourText: colourTextContainer1,
              ),
              SizedBox(
                width: width * 0.01,
              ),
              CustomContainer(
                width: width,
                height: height,
                text: textContainer2,
                colourContainer: colourContainer2,
                ColourText: colourTextContainer2,
              ),
              SizedBox(
                width: width * 0.35,
              ),
              Icon(
                Icons.format_line_spacing_outlined,
                color: Colors.grey,
              )
            ],
          ),
          Divider(
            height: 2,
            thickness: 3,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
            children: [
              CustomDivider(colour: colourDivider),
              Text(
                " $title",
                style: kAstraliansTitleTextStyle,
              ),
              SizedBox(
                width: width * 0.2,
              ),
              Text(
                '$trailling',
                style: kSubTitleTextStyle,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: LinearPercentIndicator(
              width: 250.0,
              lineHeight: 5.0,
              percent: percent,
              leading: Icon(
                Icons.flag,
                color: Colors.red,
              ),
              trailing: Icon(
                Icons.flag,
                color: Colors.red,
              ),
              backgroundColor: Colors.redAccent.withOpacity(0.5),
              progressColor: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                CustomCircularAvatarTeams(
                  width: width,
                  more: '',
                  count: index,
                ),
                SizedBox(
                  width: width * 0.07,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Send invite',
                    style: kSendTextStyle,
                  ),
                ),
                SizedBox(
                  width: width * 0.38,
                ),
                Icon(Icons.share,color: Colors.grey,)
              ],
            ),
          )
        ],
      ),
    ));
  }
}
