import 'package:flutter/material.dart';

class OpenDropDown extends StatefulWidget {
  dynamic onPress;
  bool isDropDownOpen = false;

  OpenDropDown({Key? key, required this.onPress, required this.isDropDownOpen})
      : super(key: key);

  @override
  State<OpenDropDown> createState() => _OpenDropDownState();
}

class _OpenDropDownState extends State<OpenDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.grey),
          ),
          child: InkWell(
            onTap: (){
              setState((){
                widget.onPress();
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Select'),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ),
          ),
        ),
        widget.isDropDownOpen
            ? Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        top: BorderSide(
                          color: Colors.white,
                          width: 0,
                        ),
                        right: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ))),
                child: ListView.builder(itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text('hello'),
                  );
                })),
              )
            : SizedBox()
      ],
    );
  }
}
