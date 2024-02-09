import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';


class HomeTableWidget extends StatelessWidget {
  const HomeTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HorizontalDataTable(
      leftHandSideColumnWidth: 100,
      rightHandSideColumnWidth: 600,
      isFixedHeader: true,
      headerWidgets: _getTitleWidget(),
      leftSideItemBuilder: _generateFirstColumnRow,
      rightSideItemBuilder: _generateRightHandSideColumnRow,
      itemCount: 8,
      rowSeparatorWidget: const Divider(color: Colors.black54),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Statue'),
      _getTitleItemWidget('Asset Name'),
      _getTitleItemWidget('PMS'),
      _getTitleItemWidget('PMS'),
      _getTitleItemWidget('PMS'),
    ];
  }

  Widget _getTitleItemWidget(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      width: 100,
      height: 56,
      alignment: Alignment.centerLeft,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      width: 100,
      height: 56,
      alignment: Alignment.centerLeft,
      child: Text('Row $index'),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            height: 56,
            alignment: Alignment.centerLeft,
            child: Text('Asset Name $index'),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            height: 56,
            alignment: Alignment.centerLeft,
            child: Text('PMS $index'),
          ),
        ),
      ],
    );
  }
}
