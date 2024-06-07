import 'package:flutter/material.dart';
import 'package:getx_new/widgets/custom_text_medium.dart';

class DynamicTable extends StatelessWidget {
  final List<String> columnTitles;
  final List<List<dynamic>> rowData;

  const DynamicTable({
    Key? key,
    required this.columnTitles,
    required this.rowData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        border: TableBorder.all(),
        headingRowColor: MaterialStateColor.resolveWith(
          (states) => Colors.grey.withOpacity(0.3),
        ),
        columns: columnTitles.map((title) {
          return DataColumn(
            label: CustomTextMediumField(
              value: title,
              size: 20.0,
              fontWeight: FontWeight.bold,
            ),
          );
        }).toList(),
        rows: rowData.map((row) {
          return DataRow(
            cells: row.map((cell) {
              return DataCell(
                CustomTextMediumField(
                  value: cell,
                  size: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}
