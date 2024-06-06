import 'package:flutter/material.dart';
import 'package:getx_new/widgets/dynamicTable.dart';

class CustomTable extends StatelessWidget {
  const CustomTable({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data for the table
    final List<String> columnTitles = [
      'Name',
      'Age',
      'Occupation',
      'Location',
    ];
    final List<List<String>> rowData = [
      ['John Doe', '28', 'Software Engineer', 'New York'],
      ['Jane Smith', '34', 'Project Manager', 'London'],
      ['Alice Johnson', '23', 'Intern', 'San Francisco'],
      ['Emily Davis', '45', 'CTO', 'Chicago'],
      ['Michael Brown', '30', 'Designer', 'Los Angeles'],
    ];

    final List<String> columnTitles1 = [
      'Name',
      'Age',
      'Occupation',
      'Location',
      'Salary'
    ];
    final List<List<String>> rowData1 = [
      ['John Doe', '28', 'Software Engineer', 'New York', '1000'],
      ['Jane Smith', '34', 'Project Manager', 'London', '2000'],
      ['Alice Johnson', '23', 'Intern', 'San Francisco', '3000'],
      ['Emily Davis', '45', 'CTO', 'Chicago', '4000'],
      ['Michael Brown', '30', 'Designer', 'Los Angeles', '5000'],
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DynamicTable(
              columnTitles: columnTitles1,
              rowData: rowData1,
            ),
          ),
        ),
      ),
    );
  }
}
