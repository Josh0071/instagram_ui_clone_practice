import 'package:flutter/material.dart';

class SecondPageScreen extends StatefulWidget {
  @override
  _SecondPageScreenState createState() => _SecondPageScreenState();
}

class _SecondPageScreenState extends State<SecondPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
      ),
      body: Stack(children: [
        Container(
          height: 65,
          color: Colors.white,
        ),
        ListView(children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(right: 15, left: 15),
            height: 41,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                fillColor: Colors.black12,
                labelText: '    검색',
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
