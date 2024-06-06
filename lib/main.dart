// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_new/pages/page1.dart';
// import 'package:getx_new/pages/page2.dart';
// import 'package:getx_new/pages/table.dart';
// import 'package:getx_new/pages/unknownRoutePage.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
//       initialRoute: '/',
//       getPages: [
//         GetPage(name: '/', page: () => PageOneContent()),
//         GetPage(
//             name: '/second',
//             page: () => PageTwoContent(),
//             transition: Transition.leftToRightWithFade),
//          GetPage(
//             name: '/table',
//             page: () => CustomTable(),
//             transition: Transition.leftToRightWithFade),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:getx_new/pages/table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic Table Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomTable(),
    );
  }
}
