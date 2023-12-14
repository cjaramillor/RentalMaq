import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rental_maq/config/model/publish/public_item.dart';
import 'package:rental_maq/presentation/screen/screens.dart';

class DetailsScreen extends StatelessWidget {
  static const String name = "details";
  final PublishItem itemdetail;
  final DateTime startDate = DateTime(2023, 12, 11);
  final DateTime endDate = DateTime(2025, 12, 15);

  DetailsScreen({super.key, required this.itemdetail});

  @override
  Widget build(BuildContext context) {
    final UriData? data = Uri.parse(itemdetail.url).data;
    final Uint8List myImage = data!.contentAsBytes();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: AppBar(),
      body: BodyDetailWidget(itemdetail: itemdetail, myImage: myImage),
      floatingActionButton: const ButtonTest2(),
    );
  }
}

class BodyDetailWidget extends StatelessWidget {
  const BodyDetailWidget({
    super.key,
    required this.itemdetail,
    required this.myImage,
  });

  final PublishItem itemdetail;
  final Uint8List myImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Title(
                  color: Colors.black,
                  child: Text(
                      style: const TextStyle(
                          fontFamily: AutofillHints.jobTitle,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                      itemdetail.title))),
          Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: SizedBox(
                    height: 200,
                    width: 220,
                    child: Image.memory(myImage),
                  ),
                )),
          ),
          ColoredBox(
            color: const Color.fromARGB(4, 5, 123, 333),
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(width: 1, color: Colors.grey),
                  children: [
                    TableRow(children: [
                      const Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(" Nombre"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text(itemdetail.author),
                      ),
                    ]),
                    const TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(" Region"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text("VI - Libertador Bernardo O'higgins"),
                      ),
                    ]),
                    const TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(" Comuna"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(" San Fernando"),
                      ),
                    ]),
                    const TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(" Teléfono"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: Text(" +56 9 9999999"),
                      ),
                    ])
                  ],
                ),
                const DateRangePickerWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DateRangePickerWidget extends StatefulWidget {
  const DateRangePickerWidget({super.key});

  @override
  State<DateRangePickerWidget> createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  //final PublishItem itemDetail;

  DateTimeRange dateRange = DateTimeRange(
      start: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day),
      end: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().add(const Duration(hours: 24)).day));

  String getFrom() {
    return DateFormat('dd/MM/yyyy').format(dateRange.start);
  }

  String getUntil() {
    return DateFormat('dd/MM/yyyy').format(dateRange.end);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonDatePickerWidget(
          text: getFrom(),
          onClicked: () => pickDateRange(context),
        ),
        ButtonDatePickerWidget(
          text: getUntil(),
          onClicked: () => pickDateRange(context),
        )
      ],
    );
  }

  Future pickDateRange(BuildContext context) async {
    final newDateRange = await showDateRangePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(2024),
        initialDateRange: dateRange);

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}
