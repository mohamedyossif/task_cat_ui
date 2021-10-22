import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_task1/screens/home_screen1.dart';
import 'package:screen_task1/screens/home_screen2.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Widget _screen=HomeScreenOne();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SpinCircleBottomBarHolder(
            child: _screen,
            bottomNavigationBar: SCBottomBarDetails(
                circleColors: [Colors.white, Colors.orange, Colors.redAccent],
                iconTheme: IconThemeData(color: Colors.black45),
                activeIconTheme: IconThemeData(color: Colors.orange),
                backgroundColor: Colors.white,
                actionButtonDetails: SCActionButtonDetails(
                    color: Colors.black,
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    elevation: 1),
                elevation: 2.0,
                items: [
                  SCBottomBarItem(
                      icon: Icons.home, onPressed: () {
                    setState(() {
                      _screen=HomeScreenOne();
                    });
                  }),
                  SCBottomBarItem(
                      icon: Icons.supervised_user_circle,
                      onPressed: () {
                        setState(() {
                          _screen=HomeScreenTwo();
                        });
                      }),
                  SCBottomBarItem(
                      icon: Icons.notifications,
                      onPressed: () {
                        setState(() {
                        });
                      }),
                  SCBottomBarItem(
                      icon: Icons.person,  onPressed: () {}),
                ],
                circleItems: [
                  //Suggested Count: 3
                  SCItem(icon: Icon(Icons.add), onPressed: () {}),
                  SCItem(icon: Icon(Icons.print), onPressed: () {}),
                  SCItem(icon: Icon(Icons.map), onPressed: () {}),
                ],
                bnbHeight: 70 // Suggested Height 80
            ),
          ),
        ));
  }
}

