import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutterboaspraticascupermat/ui/android/MyMaterialapp.dart';
import 'package:flutterboaspraticascupermat/ui/ios/MyCupertino.dart';

/*
void main() {
  runApp(MyApp());
} */
//chaveamento do Platform para aplicação
void main() => Platform.isIOS ? runApp(MyCupertinoapp()) : runApp(MyMaterialapp());

