import 'package:flutter/material.dart';
import 'package:udemy_responsive/mobile.dart';

import 'desktop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //Abdallah Adel
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:
          // LayoutBuilder(
          //   builder: (context, constraints) {
          //     print(constraints.minWidth.toInt());
          //     if (constraints.minWidth.toInt() <= 560) return MobileScreen();
          //     return DesktopScreen();
          //   },
          // ),
          Builder(
        builder: (context) {
          if (MediaQuery.of(context).size.width.toInt() <= 640) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 0.7),
                child: MobileScreen());
          }
          return DesktopScreen();
        },
      ),
    );
  }
}
