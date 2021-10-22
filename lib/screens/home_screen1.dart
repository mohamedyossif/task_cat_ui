import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_task1/utilities/constants1.dart';
import 'package:screen_task1/widgets/custom_Row.dart';
import 'package:screen_task1/widgets/custom_divider.dart';
import 'package:screen_task1/widgets/custom_card_view.dart';

class HomeScreenOne extends StatelessWidget {
 final  titles=['Design Line Up','Finesco','Wide World','Yooki'];
  final colourPercents=[Colors.blueAccent,Colors.teal[400],Colors.purple,Colors.yellow];
  final colourContainers=[Colors.redAccent,Colors.teal[400],Colors.yellow,Colors.lightGreen];
  final valuePercents=[0.85,0.17,0.69,1.0];
  final textPercents=['85%','17%','69','100%'];
  final texts=['Urgent','New','In Process','Done'];
  final indices=[6,3,4,6];
  final textsStack=['+5','','','+11'];


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildRow1(),
              buildRow2(height, width),
              CupertinoSearchTextField(
                placeholder: 'Search For Project, events, labels',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Projects',
                style: kProjectTitleTextStyle,
              ),
              SizedBox(
                height: height * 0.02,
              ),
              buildLastRow(width, height),
            ],
          ),
        ),
      ),
    );
  }

   buildLastRow(double width, double height) {
    return Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCardView(
                      width: width,
                      height: height,
                      title: titles[index],
                      colourPercent: colourPercents[index],
                      colourContainer: colourContainers[index]!,
                      valuePercent: valuePercents[index],
                      textPercent: textPercents[index],
                      text: texts[index],
                      ColourText: colourContainers[index],
                      index: indices[index],
                      lastTextStack: textsStack[index],
                    );
                  }),
            );
  }

   buildRow2(double height, double width) {
    return Container(
      height: height * 0.3,
      width: width,
      margin: EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Card(
        elevation: 4,
        shape: kRoundedCard,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
                offset: Offset(width * -0.03, 0),
                child: Text(
                  'Up next',
                  style: kJustBoldText,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '25',
                      style: k25TextStyle,
                    ),
                    Text(
                      'September', style: kSeptemberTextStyle,)
                  ],
                ),
                Transform.translate(
                  offset: Offset(width * .05, 0),
                  child: Column(
                    children: [
                      CustomDivider(colour: Colors.orangeAccent),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      CustomDivider(colour: Colors.blueAccent),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomRow(text: 'Meeting Lunch With James Strobinsty', width: width,),
                    SizedBox(height: height * 0.02,),
                    CustomRow(text: 'Dave`s BirthDay Patry', width: width,),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Row buildRow1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Good Morning, Kristin', style: kTitleTextStyle,),
        CircleAvatar(radius: 20,
          child: Image.asset('assets/image.jpg',),
        )
      ],
    );
  }
}
