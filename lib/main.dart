import 'package:flutter/material.dart';
import 'package:study/customscroll.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isChecked = false;
  bool _isChecked1 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DataTable Demo'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                "가맹점 관리",
                style: TextStyle(fontSize: 23),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text("[조회 가맹점수] 건"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Card(
                          child: _createDataTable(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



  DataTable _createDataTable() {
    return DataTable(
        headingRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.blue.withOpacity(0.2)),
        columns: _createColumns(),
        rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
          label: Checkbox(
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = !_isChecked;
                _isChecked1 = !_isChecked1;
              });
            },
          )),
      DataColumn(
          label: Text(
            '상태',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '대표\n이미지',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '코드/가맹점명',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '카테고리',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '등록일\n(주문/예약)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '중복',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '승인\n(주문/예약)',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '사용',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '휴점',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '아동\n급식',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            'POS상태\n(설치/로그인))',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '메뉴',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '메뉴완료',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '사장님\n사이트',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '영업/오퍼',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '입점지원금',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
      DataColumn(
          label: Text(
            '리뷰이관',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          )),
    ];
  }

  List<DataRow> _createRows() {
    return [
      DataRow(cells: [
        DataCell(Checkbox(
          value: _isChecked1,
          onChanged: (value) {
            setState(() {
              _isChecked1 = !_isChecked1;
            });
          },
        )),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('David John')),
        DataCell(Text('David John')),
      ]),
      DataRow(cells: [
        DataCell(Checkbox(
          value: _isChecked1,
          onChanged: (value) {
            setState(() {
              _isChecked1 = !_isChecked1;
            });
          },
        )),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('#100')),
        DataCell(Text('Flutter Basics')),
        DataCell(Text('David John')),
        DataCell(Text('David John')),
        DataCell(Text('David John')),
      ]),
    ];
  }
}
