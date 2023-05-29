import 'package:flutter/material.dart';

class Input3 extends StatelessWidget {
  String label;

  String placeholder;

  Input3({
    Key? key,
    required this.label,
    required this.placeholder,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(label),
          ]),
           SizedBox(
              height:MediaQuery.of(context).size.height*0.005
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.95,
              height:MediaQuery.of(context).size.height*0.05 ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      placeholder,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      child: Icon(Icons.keyboard_arrow_down),
                    )
                  ],
                ),
              )),
        ]);
  }
}
