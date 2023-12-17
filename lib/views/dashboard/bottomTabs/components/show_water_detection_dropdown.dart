import 'package:flutter/material.dart';
import 'dart:io' show Platform;

import 'package:total_parco/utils/components/radio_button.dart';

class ShowWaterDetectionDropDown extends StatefulWidget {
  dynamic onPress;
  final String placeholder;
  final bool isDropDownOpen;

  ShowWaterDetectionDropDown(
      {Key? key,
        this.onPress,
        required this.isDropDownOpen,
        required this.placeholder})
      : super(key: key);

  @override
  State<ShowWaterDetectionDropDown> createState() =>
      _ShowWaterDetectionDropDownState();
}

class _ShowWaterDetectionDropDownState extends State<ShowWaterDetectionDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.052,
          decoration: BoxDecoration(
            color: widget.isDropDownOpen
                ? Color(0xFFCFD8DC).withOpacity(0.3)
                : Colors.white,
            borderRadius: widget.isDropDownOpen
                ? BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            )
                : BorderRadius.circular(4.0),
            border: widget.isDropDownOpen
                ? Border.all(color: Color(0xFFCFD8DC))
                : Border.all(color: Colors.grey.withOpacity(.2), width: 1),
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
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Icon(
                    widget.isDropDownOpen
                        ? Icons.keyboard_arrow_down_rounded
                        : Icons.keyboard_arrow_right_outlined,
                    color: widget.isDropDownOpen
                        ? Colors.black
                        : Colors.grey.withOpacity(.6),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
        ),
        widget.isDropDownOpen
            ? Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.0),
              border:
              Border.all(color: Colors.grey, width: .2),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                border:
                Border.all(color: Colors.grey, width: .2),
              ),


              child: Column(
                children: [
                  waterTankTestInputField(
                      'Product name', (v) => v, context, null, null, 'Enter', ''),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text('Water Detection',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Container(
                            child: Row(
                              children: [
                                RadioButtonExample(
                                  optionText: 'Yes',
                                  optionValue: 'Yes',
                                  // selectedOption: testStatusSelectedValue,
                                  onChanged: (value) {
                                    // setState(() {
                                    //   testStatusSelectedValue = value;
                                    // });
                                  },
                                ),
                                RadioButtonExample(
                                  optionText: 'No',
                                  optionValue: 'No',
                                  // selectedOption: testStatusSelectedValue,
                                  onChanged: (value) {
                                    // setState(() {
                                    //   testStatusSelectedValue = value;
                                    // });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.003,
                  ),
                  waterMeasureTankBox(context),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.003,
                  ),
                  waterTankTestInputField(
                      'NET(mm)', (v) => v, context, null, null, 'Enter', ''),
                ],
              ),
            ))
            : SizedBox()
      ],
    );
  }
}


Widget waterTankTestInputField(label, onChangeValue, context,
    textEditingController, inputValidator, placeholder, error) {
  return (Container(
    width: MediaQuery.of(context).size.width * 0.86,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        GestureDetector(
            child: Container(
              height: 34,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 11.0),
                  hintText: placeholder,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ))
      ],
    ),
  ));
}

Widget waterMeasureTankBox(context) {
  return (Container(
    width: MediaQuery.of(context).size.width * 0.86,
    height: MediaQuery.of(context).size.height * 0.115,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      border: Border.all(color: Colors.lightBlue.withOpacity(.5), width: 1),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(4.0),
            // border: Border.all(color: Colors.lightBlue.withOpacity(.5), width: .2),

              border: Border(
                  left: BorderSide(
                    color: Colors.transparent,
                  ),
                  top: BorderSide(
                      color: Colors.lightBlue.withOpacity(.5), width: .2),
                  right: BorderSide(
                    color: Colors.transparent,
                  ),
                  bottom: BorderSide(
                      color: Colors.lightBlue.withOpacity(.5), width: .2))),
          child: IntrinsicHeight(
            //wrap Row with this, otherwise, vertical divider will not display
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Container(
                        height: 32,
                        child: Text('Dip1 (mm)'),
                        // color: Colors.transparent,
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.lightBlue.withOpacity(.5),

                    thickness: .2, //thickness of divier line
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Container(
                        height: 32,
                        child: Text('Dip2 (mm)'),
                        // color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Container(
          // height: 40,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(4.0),
            // border: Border.all(color: Colors.lightBlue.withOpacity(.5), width: .2),
              border: Border(
                  left: BorderSide(
                    color: Colors.transparent,
                  ),
                  top: BorderSide(
                      color: Colors.lightBlue.withOpacity(.5), width: .2),
                  right: BorderSide(
                    color: Colors.transparent,
                  ),
                  bottom: BorderSide(
                    color: Colors.transparent,
                  ))),
          child: IntrinsicHeight(
            //wrap Row with this, otherwise, vertical divider will not display
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // height: 32,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter",
                          contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                      // color: Colors.transparent,
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.lightBlue.withOpacity(.5),

                    thickness: 1, //thickness of divier line
                  ),
                  Expanded(
                    child: Container(
                      // height: 32,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
                          hintText: 'Enter',
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                      // color: Colors.transparent,
                    ),
                  ),
                ],
              )),
        ),
      ],
    ),
  ));
}


