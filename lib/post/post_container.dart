import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class PostContainer extends StatefulWidget {
  int good;
  int currentPos = 0;
  int index = 0;
  var listPaths = [];
  final int comment;
  int time;

  PostContainer({this.good, this.listPaths, this.comment, this.time});

  @override
  _PostContainerState createState() => _PostContainerState();
}

class _PostContainerState extends State<PostContainer> {
  int currentImage = 0;
  int index = 0;
  String like = 'assets/heart2.png';
  String isLiked = 'assets/heartFilledIn.png';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        color: Colors.grey,
        width: 0.1,
        height: 0.2,
      ),
      SizedBox(
        height: 2,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/me.jpg'),
              radius: 16,
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              'jsoo.ha_',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.more_horiz,
            color: Colors.black87,
          ),
          onPressed: () {
            return showDialog(
                context: context,
                barrierDismissible: true,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          ListTile(
                            title: TextButton(
                                child: Text(
                              '신고...',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            )),
                          ),
                          ListTile(
                            title: TextButton(
                                child: Text(
                              '숨기기',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            )),
                          ),
                          ListTile(
                            title: TextButton(
                                child: Text(
                              '링크 복사',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            )),
                          ),
                          ListTile(
                            title: TextButton(
                                child: Text(
                              '공유하기',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            )),
                          ),
                          ListTile(
                            title: TextButton(
                                child: Text(
                              '저장하기',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            '닫기',
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ))
                    ],
                  );
                });
          },
        ),
      ]),
      Container(
        width: 400,
        height: 405,
        child: Stack(children: [
          Column(children: [
            CarouselSlider.builder(
              itemCount: widget.listPaths.length,
              options: CarouselOptions(
                  aspectRatio: 1 / 1,
                  enableInfiniteScroll: false,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  height: 360,
                  viewportFraction: 1.05,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentImage = index;
                    });
                  }),
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) {
                return MyImageView(widget.listPaths[index]);
              },
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.listPaths.map((url) {
                int index = widget.listPaths.indexOf(url);
                return Container(
                  width: 6.0,
                  height: 6.5,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentImage == index ? Colors.blue : Colors.black54,
                  ),
                );
              }).toList(),
            ),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    SizedBox(
                      width: 11,
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      icon: Container(
                          child: Image.asset(
                        like,
                        height: 30,
                        width: 30,
                      )),
                      onPressed: () {
                        return setState(() {
                          return like = isLiked;
                        });
                      },
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      icon: Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/comment2.png')),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      icon: Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/dm2.png')),
                      onPressed: () {},
                    ),
                  ]),
                  IconButton(
                    icon: Container(
                        width: 30,
                        height: 26,
                        child: Image.asset('assets/bookmark.png')),
                    onPressed: () {},
                  ),
                ]),
          ),
        ]),
      ),
      Row(
        children: [
          SizedBox(
            width: 11,
          ),
          Text(
            '좋아요 ${widget.good}개',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.black87,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Row(children: [
        SizedBox(
          width: 11,
        ),
        Text(
          'jsoo.ha_',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ]),
      SizedBox(
        height: 2,
      ),
      Row(children: [
        SizedBox(
          width: 11,
        ),
        Text(
          '댓글 ${widget.comment}개 모두 보기',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ]),
      SizedBox(
        height: 2,
      ),
      Row(children: [
        SizedBox(
          width: 11,
        ),
        Text(
          '${widget.time} 시간 전',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Colors.grey,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
      ]),
    ]);
  }
}

class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imgPath),
        ));
  }
}
