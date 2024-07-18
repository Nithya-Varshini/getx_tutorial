// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ComplexTable extends StatelessWidget {
  const ComplexTable({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nested Tables Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Outer Table',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Center(
                          child: Container(
                            // width: double.maxFinite,
                            child: Center(child: Text('Cell 1')),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          // padding: EdgeInsets.all(8.0),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Table(
                                border: TableBorder.all(),
                                children: [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Container(
                                          padding: const EdgeInsets.all(8.0),
                                          color: Colors.green[100],
                                          child: Center(
                                              child: const Text('Sub Cell 1')),
                                        ),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      TableCell(
                                          child: Table(
                                        border: TableBorder.all(),
                                        children: [
                                          TableRow(children: [
                                            TableCell(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                color: Colors.green[100],
                                                child: Center(
                                                    child: const Text(
                                                        'Sub Cell 1')),
                                              ),
                                            ),
                                            TableCell(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                color: Colors.green[100],
                                                child: Center(
                                                    child: const Text(
                                                        'Sub Cell 1')),
                                              ),
                                            ),
                                            TableCell(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                color: Colors.green[100],
                                                child: Center(
                                                    child: const Text(
                                                        'Sub Cell 1')),
                                              ),
                                            ),
                                          ])
                                        ],
                                      )),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Center(child: const Text('Cell 2')),
                        ),
                      ),
                      TableCell(
                          child: Table(
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            TableCell(
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: Center(child: const Text('Sub Cell 1')),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: Center(child: const Text('Sub Cell 1')),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: Center(child: const Text('Sub Cell 1')),
                              ),
                            ),
                          ])
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
