
import 'package:flutter/material.dart';
class Input extends StatelessWidget {
  String label;
  String placeholder;

   Input({Key? key,required this.label,required this.placeholder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(label),
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
        const SizedBox(
          height: 10,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: TextFormField(
              // controller: controller,
              keyboardType: TextInputType.emailAddress,
              // focusNode: focus,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                contentPadding: EdgeInsetsDirectional.only(start: 10.0),
                hintText: placeholder,
              ),
            ))
      ],
    );
  }
}
