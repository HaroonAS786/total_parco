import 'package:flutter/material.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/card_item.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/header.dart';

class QualityComplaint extends StatelessWidget {
  const QualityComplaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Header(title: 'Quality Testing Unit', onPress:null , onBackPress:(){
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
                    width: MediaQuery.of(context).size.width * 0.9,
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

                ],
              ),

              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(

                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return CardItem(deleteItem: null,);
                    }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
