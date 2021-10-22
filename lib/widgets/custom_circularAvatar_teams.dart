import 'package:flutter/material.dart';
class CustomCircularAvatarTeams extends StatelessWidget {
  final count,more,width;
  CustomCircularAvatarTeams({this.count,this.more,this.width});
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        for (int i = 0; i < count; i++)
          Transform.translate(
            offset: Offset(width * (0.04 * i), 0),
            child: CircleAvatar(
              radius: 12,
              child: Image.asset(
                'assets/image.jpg',
              ),
            ),
          ),
        Transform.translate(
          offset: Offset(width * 0.264, 5),
          child: Text(
            '$more',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
