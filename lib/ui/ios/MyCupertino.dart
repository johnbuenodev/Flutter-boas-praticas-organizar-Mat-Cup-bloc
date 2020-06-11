import 'package:flutter/cupertino.dart';
import 'package:flutterboaspraticascupermat/ui/ios/pages/home.dart';

class MyCupertinoapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      showSemanticsDebugger: false,
      home: HomePage(),
    );
  }
}
