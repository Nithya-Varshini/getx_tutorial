import 'package:flutter/material.dart';
import 'package:getx_new/widgets/custom_text_medium.dart';

class DynamicTable extends StatelessWidget {
  final List<String> columnTitles;
  final List<List<String>> rowData;

  const DynamicTable({
    Key? key,
    required this.columnTitles,
    required this.rowData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: FixedColumnWidth(120.0),
      border: TableBorder.all(
          color: Colors.black, style: BorderStyle.solid, width: 2),
      children: [
        // Generate the header row
        TableRow(
          children: columnTitles.map((title) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextMediumField(
                      value: title, size: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            );
          }).toList(),
        ),
        // Generate the data rows
        for (final row in rowData)
          TableRow(
            children: row.map((cell) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextMediumField(
                        value: cell, size: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              );
            }).toList(),
          ),
      ],
    );
  }
}
