import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:total_parco/utils/components/drop_down.dart';
import 'package:total_parco/utils/components/input_3.dart';
import 'package:total_parco/utils/components/reusable.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/card_item.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/header.dart';

class QualityTestUnit extends StatefulWidget {
  const QualityTestUnit({Key? key}) : super(key: key);

  @override
  State<QualityTestUnit> createState() => _QualityTestUnitState();
}

class _QualityTestUnitState extends State<QualityTestUnit> {

  bool isDropDown = false;

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Header(
                title: 'Quality Testing Unit',
                onPress: null,
                onBackPress: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.68,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        border: Border.all(color: Color(0xFFCFD8DC))),
                    child: Row(
                      children: [
                        Center(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Icon(
                                Icons.search,
                                color: Color(0xFF9D9D9D),
                              )),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: TextField(
                            // focusNode: focus,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Color(0xFF9D9D9D),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          showSheet(context, null, isDropDown);
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFFECEFF1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Center(
                            child: Icon(
                              Icons.filter_alt_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                     const SizedBox(
                        width: 6,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xFFECEFF1),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Center(
                          child: Icon(
                            Icons.download,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ), const SizedBox(
                height: 20,
              ),

              showDropDown(context, (){
                setState((){
                  isDropDown=!isDropDown;
                });
              }, isDropDown),


              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return CardItem(
                        deleteItem: () {
                          deleteDialog(context);
                        },
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget showFilterBottomView(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 14),
    child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Filters",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Reset Filters",
              style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Column(
          children: [
            Input3(
              label: 'Site Name',
              placeholder: "Select",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Input3(
              label: 'Site Name',
              placeholder: "Select",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Input3(
              label: 'Site Name',
              placeholder: "Select",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Input3(
              label: 'Site Name',
              placeholder: "Select",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Input3(
              label: 'Site Name',
              placeholder: "Select",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Input3(
              label: 'Site Name',
              placeholder: "Select",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Input3(
              label: 'Site Name',
              placeholder: "Select",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.11,
              decoration:  const BoxDecoration(
                color: Color(0xFFECEFF1),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Center(
                  child: Text(
                'Clear All',
                style: TextStyle(color: Color(0xFF081A53), fontSize: 14),
              )),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width * 0.11,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Center(
                  child: Text(
                'Apply Filters',
                style: TextStyle(color: Colors.white, fontSize: 14),
              )),
            ),
          ],
        )
      ],
    ),
  );
}

Widget showDropDown(context,onPress,isDropDownOpen){
  print(isDropDownOpen);
  return Column(
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.grey),
        ),
        child: InkWell(
          onTap:onPress,
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
      isDropDownOpen
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