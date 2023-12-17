import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IssueCard extends StatelessWidget {
  const IssueCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
      width: MediaQuery.of(context).size.width * 0.98,
      height: MediaQuery.of(context).size.width * 0.42,
      decoration: BoxDecoration(
          // color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Color(0xFFCFD8DC))),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.98,
            height: MediaQuery.of(context).size.width * 0.11,
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "#883",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF095EB5),
                            decoration: TextDecoration.underline),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.circle,
                        color: Color(0xFF90A4AE),
                        size: 7,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "12/5/2021",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF555555)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/delete.svg'),
                      SizedBox(
                        width: 6,
                      ),
                      SvgPicture.asset('assets/icons/done.svg'),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.03,
                      decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          'NCR',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.03,
                      decoration: BoxDecoration(
                          color: Color(0xFFECEFF1),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          'QFIF',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.03,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFF5E4),
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: Center(
                    child: Text(
                      'Pending',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                issueDescription("Due in : ", '4 day', context),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                issueDescription("Issue Occurred : ", '4 issues', context,underline: true),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                issueDescription(
                    "Site Address : ", '775 Rolling Green Rd.', context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget issueDescription(label, value, context, {underline = false}) {
  return (Row(
    children: [
      Text(
        label,
        style: TextStyle(color: Color(0xFF7B7B7B), fontSize: 14),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.01,
      ),
      Text(
        value,
        style: TextStyle(
            color: underline ? Color(0xFF1764C0) : Colors.black,
            fontSize: 14,
            decoration:
                underline ? TextDecoration.underline : TextDecoration.none),
      ),
    ],
  ));
}
