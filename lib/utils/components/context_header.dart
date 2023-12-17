import 'package:flutter/material.dart';

class ContextHeader extends StatelessWidget {
  final String? label;
  final IconData? icon;

  ContextHeader({Key? key, this.label, this.icon})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label!,
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        Icon(
          icon,
          color: Colors.black45,
        )
      ],
    );
  }
}
