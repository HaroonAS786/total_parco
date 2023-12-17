import 'package:flutter/material.dart';
import 'package:total_parco/views/dashboard/bottomTabs/issues/components/issues_card.dart';

class Issues extends StatefulWidget {
  const Issues({Key? key}) : super(key: key);

  @override
  State<Issues> createState() => _IssuesState();
}

class _IssuesState extends State<Issues> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  'Issues',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.78,
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
                          width: MediaQuery.of(context).size.width * 0.6,
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
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFECEFF1),
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Center(
                      child: Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.black,
                      ),
                    ),
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
                      return IssueCard();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
