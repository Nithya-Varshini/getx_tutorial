import 'package:flutter/material.dart';
import 'package:getx_new/widgets/dynamicTable.dart';

class CustomTable1 extends StatefulWidget {
  const CustomTable1({super.key});

  @override
  _CustomTableState createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable1> {
  final List<String> columnTitles = [
    'Name',
    'Age',
    'Occupation',
    'Location',
    'Department'
  ];

  final List<List<String>> _rowData = [
    ['John Doe', '28', 'Software Engineer', 'New York', 'IT'],
    ['Jane Smith', '34', 'Project Manager', 'London', 'Management'],
    ['Mike Johnson', '23', 'Intern', 'San Francisco', 'IT'],
    ['Emily Davis', '45', 'CTO', 'Chicago', 'Executive'],
    ['Michael Brown', '30', 'Designer', 'Los Angeles', 'Design'],
  ];

  bool _isAscending = true;

  void _sortColumn(int columnIndex) {
    setState(() {
      _isAscending = !_isAscending;
      _rowData.sort((a, b) {
        final comparison = a[columnIndex].compareTo(b[columnIndex]);
        return _isAscending ? comparison : -comparison;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _sortColumn(
                  0), // Change the index to sort by different columns
              child: Text(_isAscending ? 'Sort Descending' : 'Sort Ascending'),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: DynamicTable(
                    columnTitles: columnTitles,
                    rowData: _rowData,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
