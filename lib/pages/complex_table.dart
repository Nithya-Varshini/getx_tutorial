import 'package:flutter/material.dart';

class ComplexTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nested Tables Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Outer Table',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          child: Text('Cell 1'),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          // padding: EdgeInsets.all(8.0),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   'Nested Table in Cell 1:',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              // SizedBox(height: 10),
                              Table(
                                border: TableBorder.all(),
                                children: [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Container(
                                          padding: EdgeInsets.all(8.0),
                                          color: Colors.green[100],
                                          child: Text('Sub Cell 1'),
                                        ),
                                      ),
                                      // TableCell(
                                      //   child: Container(
                                      //     padding: EdgeInsets.all(8.0),
                                      //     color: Colors.green[200],
                                      //     child: Text('Sub Cell 2'),
                                      //   ),
                                      // ),
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
                                                padding: EdgeInsets.all(8.0),
                                                color: Colors.green[100],
                                                child: Text('Sub Cell 1'),
                                              ),
                                            ),
                                            TableCell(
                                              child: Container(
                                                padding: EdgeInsets.all(8.0),
                                                color: Colors.green[100],
                                                child: Text('Sub Cell 1'),
                                              ),
                                            ),
                                            TableCell(
                                              child: Container(
                                                padding: EdgeInsets.all(8.0),
                                                color: Colors.green[100],
                                                child: Text('Sub Cell 1'),
                                              ),
                                            ),
                                          ])
                                        ],
                                      )),

                                      // TableCell(
                                      //   child: Container(
                                      //     padding: EdgeInsets.all(8.0),
                                      //     color: Colors.green[300],
                                      //     child: Text('Sub Cell 4'),
                                      //   ),
                                      // ),
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
                          padding: EdgeInsets.all(8.0),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Text('Cell 2'),
                        ),
                      ),
                      TableCell(
                          child: Table(
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            TableCell(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: Text('Sub Cell 1'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                color: const Color.fromARGB(255, 255, 255, 255),
                                child: Text('Sub Cell 1'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                color: Color.fromARGB(255, 255, 255, 255),
                                child: Text('Sub Cell 1'),
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
