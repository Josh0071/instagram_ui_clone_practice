import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../screen/story.dart';

class CircleIcon extends StatefulWidget {
  final String image;
  final String instaId;

  CircleIcon({this.image, this.instaId});

  @override
  _CircleIconState createState() => _CircleIconState();
}

class _CircleIconState extends State<CircleIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 9,
        ),
        Column(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/story_icon.png'),
                    radius: 33,
                  ),
                  RawMaterialButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    child: CircleAvatar(
                      foregroundImage: AssetImage(widget.image),
                      backgroundColor: Colors.white,
                      radius: 29,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MoreStories()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.instaId,
              style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}

class MyCircleIcon extends StatefulWidget {
  final String image;
  final String id;

  MyCircleIcon({this.image, this.id});

  @override
  _MyCircleIconState createState() => _MyCircleIconState();
}

class _MyCircleIconState extends State<MyCircleIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 9),
        Column(
          children: [
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/greyicon.png'),
                    radius: 36,
                  ),
                  RawMaterialButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    child: CircleAvatar(
                      foregroundImage: AssetImage(widget.image),
                      backgroundColor: Colors.white,
                      radius: 29,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                  ),
                ],
              ),
            ),
            Text(
              '${widget.id}',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
