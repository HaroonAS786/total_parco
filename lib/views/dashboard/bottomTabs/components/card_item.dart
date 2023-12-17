import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItem extends StatelessWidget {
  dynamic deleteItem;
  CardItem({Key? key, required this.deleteItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
      width: MediaQuery.of(context).size.width * 0.98,
      height: MediaQuery.of(context).size.width * 0.38,
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
                  InkWell(
                      onTap: deleteItem,
                      child: SvgPicture.asset('assets/icons/delete.svg')),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                issueDescription(
                    "Site Name : ", '775 Rolling Green Rd', context),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.004,
                ),
                issueDescription("Region: ", 'Lahore', context,
                    underline: false),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                issueDescription("Audit by: ", 'Haroon Asif', context),
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
