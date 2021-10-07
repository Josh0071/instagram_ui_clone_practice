import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/screen/home_page_body.dart';
import 'package:instagram_clone_ui/screen/second_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
      routes: {
        '/first': (context) => HomePageBody(),
        '/second': (context) => SecondPageScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  var _pages = [
    HomePageBody(),
    SecondPageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                  width: 32,
                  height: 30,
                  child: Image.asset('assets/home2.png')),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Container(
                  width: 32,
                  height: 29,
                  child: Image.asset('assets/magnify2.png')),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Container(
                  width: 32,
                  height: 32,
                  child: Image.asset('assets/plus2.png')),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Container(
                  width: 32, height: 32, child: Image.asset('assets/bag2.png')),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Container(
                  width: 32,
                  height: 32,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/me.jpg'))),
              label: 'home'),
        ],
      ),
    );
  }
}
