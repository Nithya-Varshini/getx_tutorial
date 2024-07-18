import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_new/pages/complex_table.dart';
import 'package:getx_new/pages/customTable.dart';
import 'package:getx_new/pages/page1.dart';
import 'package:getx_new/pages/page2.dart';
import 'package:getx_new/pages/responsiveTable.dart';
import 'package:getx_new/pages/sortableTable.dart';
import 'package:getx_new/pages/table.dart';
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
        GetPage(
            name: '/table',
            page: () => CustomTable(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: '/responsivetable',
            page: () => DataPage(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: '/customtable',
            page: () => CustomTable1(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: '/sortabletable',
            page: () => SortableTable(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: '/complextable',
            page: () => ComplexTable(),
            transition: Transition.leftToRightWithFade),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('ONDC-Community Completed Orders Dashboard as on 30th June 2024'),
//         ),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Table(
//               border: TableBorder.all(),
//               columnWidths: {
//                 0: FixedColumnWidth(150.0),
//                 1: FixedColumnWidth(100.0),
//                 2: FixedColumnWidth(100.0),
//                 3: FixedColumnWidth(100.0),
//                 4: FixedColumnWidth(100.0),
//                 5: FixedColumnWidth(100.0),
//                 6: FixedColumnWidth(100.0),
//                 7: FixedColumnWidth(120.0),
//                 8: FixedColumnWidth(120.0),
//                 9: FixedColumnWidth(120.0),
//                 10: FixedColumnWidth(120.0),
//               },
//               children: [
//                 TableRow(
//                   children: [
//                     headerCell('Particulars'),
//                     headerCell('FTD (Pune)'),
//                     headerCell('FTD (Mumbai)'),
//                     headerCell('FTD Total'),
//                     headerCell('MTD (Pune)'),
//                     headerCell('MTD (Mumbai)'),
//                     headerCell('MTD Total'),
//                     headerCell('YTD (Pune)'),
//                     headerCell('YTD (Mumbai)'),
//                     headerCell('ITD (Pune)'),
//                     headerCell('ITD (Mumbai)'),
//                   ],
//                 ),
//                 dataRow([
//                   'Total Orders Received',
//                   '176', '324', '500',
//                   '5183', '7647', '12830',
//                   '15314', '19864',
//                   '24034', '31640',
//                 ]),
//                 dataRow([
//                   'Total Bill Value (GMV)- INR',
//                   '26499', '48600', '75099',
//                   '861306', '1524389', '2385695',
//                   '1552902', '2230610',
//                   '1782843', '2420307',
//                 ]),
//                 dataRow([
//                   'Avg Ticket Size -INR',
//                   '151', '150', '150',
//                   '166', '199', '186',
//                   '101', '112',
//                   '74', '76',
//                 ]),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget headerCell(String text) {
//     return Container(
//       padding: EdgeInsets.all(8.0),
//       color: Colors.blue[50],
//       child: Center(
//         child: Text(
//           text,
//           style: TextStyle(fontWeight: FontWeight.bold),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }

//   TableRow dataRow(List<String> cells) {
//     return TableRow(
//       children: cells.map((cell) {
//         return Container(
//           padding: EdgeInsets.all(8.0),
//           child: Text(
//             cell,
//             textAlign: TextAlign.center,
//           ),
//         );
//       }).toList(),
//     );
//   }
// }

