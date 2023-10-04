import 'package:flutter/material.dart';
import 'package:tiktokclone/scenes/MainSceene.dart';
import 'scenes/LoginScene.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "tiktok clone",
      debugShowCheckedModeBanner: false,
      home:  MainSceene(),
    );
  }
}
