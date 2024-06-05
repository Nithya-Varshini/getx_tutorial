import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_new/pages/page1.dart';
import 'package:getx_new/pages/page2.dart';
import 'package:getx_new/pages/unknownRoutePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => PageOneContent()),
        GetPage(
            name: '/second',
            page: () => PageTwoContent(),
            transition: Transition.leftToRightWithFade),
      ],
    );
  }
}
