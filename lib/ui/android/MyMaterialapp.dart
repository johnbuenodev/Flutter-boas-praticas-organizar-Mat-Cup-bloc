import 'package:flutter/material.dart';
import 'file:///C:/Users/john%20armitage/Desktop/flutter-projects/flutterboaspraticascupermat/lib/ui/android/pages/home.dart';

class MyMaterialapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }

}