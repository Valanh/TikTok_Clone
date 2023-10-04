import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'LoginScene.dart';

import '../homescenes/ChartScene.dart';
import '../homescenes/HomeScene.dart';
import '../homescenes/MailBoxScene.dart';
import '../homescenes/ProfileScene.dart';



class MainSceene extends StatefulWidget {
  const MainSceene({super.key});

  @override
  State<MainSceene> createState() => _MainSceneState();
}

class _MainSceneState extends State<MainSceene> {
  int _current = 0;
  Color _colorVS = Colors.white,
      _colorUNVS = Colors.white,
      _colorBG = Colors.black;
  int _scenSelectSC = 0;
  final List<Widget> _page = [
    HomeScene(),
    ChatScene(),
    MailBoxScene(),
    ProFileScene()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_scenSelectSC], //bottomNav
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        selectedFontSize: 10,
        selectedItemColor: _colorVS,
        unselectedItemColor: _colorUNVS,
        //item tab
        items: [
          //nút home
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home",
              backgroundColor: _colorBG),
          //nút chat
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: "Chat",
              backgroundColor: _colorBG),

          BottomNavigationBarItem(
              icon: Icon(Icons.add_box, size: 40),
              label: "",
              backgroundColor: _colorBG),

          //nút mailbox
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail_outlined),
              label: "Mailbox",
              backgroundColor: _colorBG),

          //nút profile
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: _colorBG)
        ],
        currentIndex: _current,
        //sự kiện click
        onTap: (value) {
          setState(() {
            _current = value;
            if (value == 0) {
              _colorVS = Colors.white;
              _colorUNVS = Colors.white;
              _colorBG = Colors.black;
            } else {
              _colorVS = Colors.black;
              _colorUNVS = Colors.black;
              _colorBG = Colors.white;
            }
            if(value >= 3){
              _scenSelectSC = value - 1;
            }else if (value <= 1) {
              _scenSelectSC = value;
            }else{
              //open camera
            }
          });
        },
      ),
    );
  }
}
