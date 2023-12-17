import 'package:flutter/material.dart';
import 'dart:io' show Platform;
class DateSelector extends StatefulWidget {
  final String label;
  final String placeholder;
  DateSelector({Key? key, required this.label, required this.placeholder})
      : super(key: key);

  @override
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(widget.label),
            const SizedBox(
              width: 4,
            ),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 6.0),
                child: Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 8,
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.052,
          child: GestureDetector(
            onTap: () => _selectDate(context),
            child: AbsorbPointer(
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10.0, left: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  hintText: widget.placeholder,
                  suffixIcon: Icon(Icons.date_range_sharp),
                ),
                controller: TextEditingController(
                  text: _selectedDate != null
                      ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                      : '',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
