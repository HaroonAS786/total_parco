import 'package:flutter/material.dart';
import 'package:total_parco/utils/components/bottom_sheet.dart';
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
                          showCustomBottomSheet(context);
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
              ),
              SizedBox(
                height: 20,
              ),
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




