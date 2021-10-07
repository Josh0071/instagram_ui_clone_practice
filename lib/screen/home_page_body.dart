import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_clone_ui/Post/post_container.dart';
import 'package:instagram_clone_ui/widget/circle_icon.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AppBar(
          toolbarHeight: 49,
          title: Column(
            children: [
              SizedBox(
                height: 6,
              ),
              Container(
                height: 45,
                width: 220,
                child: Image.asset(
                  'assets/instagram_logo.png',
                ),
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Container(
                  width: 26,
                  height: 26,
                  child: Image.asset('assets/20210921_232652.png')),
            ),
            SizedBox(
              width: 1,
            ),
            IconButton(
              onPressed: () {},
              icon: Container(
                  width: 26,
                  height: 26,
                  child: Image.asset('assets/heart2.png')),
            ),
            IconButton(
              onPressed: () {},
              icon: Container(
                  width: 26, height: 26, child: Image.asset('assets/dm2.png')),
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 4),
              MyCircleIcon(
                image: 'assets/me.jpg',
                id: '내 스토리',
              ),
              CircleIcon(image: 'assets/IU2.jpg', instaId: 'dlwlrma_IU'),
              CircleIcon(image: 'assets/Musk2.jpg', instaId: 'doge_Musk'),
              MyCircleIcon(image: 'assets/Song.jpg', id: 'Song'),
              CircleIcon(image: 'assets/stevejobs1.jpg', instaId: 'Apple_Jobs'),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          color: Colors.grey,
          width: 0.1,
          height: 0.2,
        ),
        PostContainer(
          good: 32,
          listPaths: [
            'assets/toronto.jpg',
            'assets/sunflower.jpg',
            'assets/ocean.jpg',
            'assets/mountain.jpg'
          ],
          comment: 16,
          time: 5,
        ),
        PostContainer(
          good: 643,
          listPaths: ['assets/ocean.jpg', 'assets/mountain.jpg'],
          comment: 61,
          time: 7,
        ),
      ],
    );
  }
}
