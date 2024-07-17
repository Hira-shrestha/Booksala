import 'package:flutter/material.dart';
import 'package:library_store/books/rangeslider.dart';

import 'genre.dart';

class FilterValue {
  FilterValue(
      {required this.generList,
      required this.minValue,
      required this.maxValue});
  List<Genre> generList;
  int minValue;
  int maxValue;
}

class EnumDropdown extends StatefulWidget {
  EnumDropdown({this.updatedGenerlist, this.filterValue, super.key});
  final Function(FilterValue)? updatedGenerlist;
  FilterValue? filterValue;

  @override
  _EnumDropdownState createState() => _EnumDropdownState();
}

class _EnumDropdownState extends State<EnumDropdown> {
  List<Genre> generList = [];
  int minValue = 0;
  int maxValue = 1000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.filterValue != null) {
      generList = widget.filterValue!.generList;
      minValue = widget.filterValue!.minValue;
      maxValue = widget.filterValue!.maxValue;
    } else {
      generList = [];
      minValue = 50;
      maxValue = 800;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text("Select Genre",
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: Genre.values.map((status) {
                  return CheckboxListTile(
                    title: Text(
                        capitalizeString(status.toString().split('.').last)),
                    value: generList.contains(status),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value == true) {
                          generList.add(status);
                        } else {
                          generList.remove(status);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            child: RangeSliderWidget(
                onRangeChange: (p0, p1) {
                  minValue = p0;
                  maxValue = p1;
                },
                startValue: minValue,
                endValue: maxValue),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50, left: 24, right: 24),
            child: SizedBox(
              height: 50.0,
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: apply,
                      child: const Text('Apply'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String capitalizeString(String s) => s[0].toUpperCase() + s.substring(1);

  void apply() {
    FilterValue value = FilterValue(
        generList: generList, minValue: minValue, maxValue: maxValue);
    widget.updatedGenerlist?.call(value);
    Navigator.pop(context);
  }
}
