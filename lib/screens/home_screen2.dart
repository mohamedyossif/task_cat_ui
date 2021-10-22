import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:screen_task1/utilities/constants1.dart';
import 'package:screen_task1/widgets/custom_card.dart';
import 'package:screen_task1/widgets/custom_circularAvatar_teams.dart';
import 'package:screen_task1/widgets/custom_container.dart';
import 'package:screen_task1/widgets/custom_divider.dart';
import 'package:screen_task1/widgets/custom_elevated_button.dart';
import 'package:screen_task1/widgets/custom_material_button.dart';

class HomeScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 18.0, top: 18.0, left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildRow1(),
                Text(
                  'Design Line Up',
                  style: kProjectTitleTextStyle,
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                buildRow2(height, width),
                SizedBox(
                  height: height * 0.05,
                ),
                buildRow3(width),
                CustomCard(
                  width: width,
                  height: height,
                  textContainer1: 'New',
                  colourTextContainer1: Colors.teal,
                  colourContainer1: Colors.tealAccent,
                  colourDivider: Colors.lightGreen,
                  textContainer2: 'Urgent',
                  colourTextContainer2: Colors.redAccent,
                  colourContainer2: Colors.redAccent.withOpacity(0.9),
                  title: 'Call With Australians',
                  index: 2,
                  percent: 0.5,
                  trailling: '🕗 13:00- 15:50',
                ),
                CustomCard(
                  width: width,
                  height: height,
                  textContainer1: 'in Process',
                  colourTextContainer1: Colors.yellow,
                  colourContainer1: Colors.yellow[100],
                  colourDivider: Colors.indigo,
                  textContainer2: '',
                  colourTextContainer2: Colors.white,
                  colourContainer2: Colors.white,
                  title: 'Send a review to client',
                  index: 3,
                  percent: 0.8,
                  trailling: '🕗',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildRow3(double width) {
    return Row(
      children: [
        CustomElevatedButton(
          label: 'To-dos',
        ),
        SizedBox(
          width: width * 0.05,
        ),
        CustomElevatedButton(
          label: 'UAT',
        ),
        SizedBox(
          width: width * 0.05,
        ),
        CustomElevatedButton(
          label: 'Done',
        ),
      ],
    );
  }

  Row buildRow2(double height, double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircularPercentIndicator(
          radius: 120.0,
          lineWidth: 15.0,
          percent: .85,
          center: Text(
            '85%',
            style: kPercentText,
          ),
          progressColor: Colors.blueAccent[100],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Teams',
              style: kSubTitleTextStyle,
            ),
            SizedBox(
              height: height * 0.01,
            ),
            CustomCircularAvatarTeams(
              width: width,
              more: '+11',
              count: 6,
            ),
            SizedBox(
              height: height * 0.014,
            ),
            Text('📦️ started May, 13', style: kSubTitleTextStyle),
            SizedBox(
              height: height * 0.014,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.green,
                ),
                label: Text(
                  'Add Task',
                  style: kLabelElevatedButton,
                ),
                style: kElevatedButton),
          ],
        )
      ],
    );
  }

  Row buildRow1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BackButton(),
        Row(
          children: [
            CustomMaterialButton(
              iconData: Icons.more_vert_outlined,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomMaterialButton(
              iconData: Icons.launch,
            ),
          ],
        ),
      ],
    );
  }
}
