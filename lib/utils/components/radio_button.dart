import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  final String optionText;
  final String optionValue;
  final String selectedOption;
  final dynamic onChanged;

  RadioButtonExample({
    this.optionText='',
    this.optionValue='',
    this.selectedOption='',
    required this.onChanged,
  });

  @override
  State<RadioButtonExample> createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onChanged(widget.optionValue),
      child: Row(
        children: <Widget>[


          Radio<String>(
            value: widget.optionValue,
            groupValue: widget.selectedOption,
            onChanged: widget.onChanged,
          ),
          Text(widget.optionText),
        ],
      ),
    );
  }
}
