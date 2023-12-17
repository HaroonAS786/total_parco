import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class ShowDropDown extends StatefulWidget {
  dynamic onPress;
  dynamic itemOnPress;
  bool isDropDownOpen;
  String dropDownLabel;
  String placeholder;
  dynamic list;

  ShowDropDown(
      {Key? key,
      required this.onPress,
      required this.isDropDownOpen,
      required this.dropDownLabel,
      required this.list,
      required this.itemOnPress,
      required this.placeholder,
      })
      : super(key: key);

  @override
  State<ShowDropDown> createState() => _ShowDropDownState();
}

class _ShowDropDownState extends State<ShowDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [
            Text(widget.dropDownLabel),
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


        SizedBox(height: MediaQuery.of(context).size.height * 0.005),
        Container(
          height:MediaQuery.of(context).size.height * 0.052,

          decoration: BoxDecoration(
            borderRadius: widget.isDropDownOpen
                ? BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  )
                : BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey),
          ),
          child: InkWell(
            onTap: widget.onPress,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.placeholder,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded)
                ],
              ),
            ),
          ),
        ),
        widget.isDropDownOpen
            ? Container(
                height: MediaQuery.of(context).size.height * 0.2,
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
                child: ListView.builder(
                    itemCount: widget.list.length,
                    itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: ()=> widget.itemOnPress(index)

                    ,
                    child: ListTile(
                      title: Text(widget.list[index]),
                    ),
                  );
                })),
              )
            : SizedBox()
      ],
    );
  }
}
