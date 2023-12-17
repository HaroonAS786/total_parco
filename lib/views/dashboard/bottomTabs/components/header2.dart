import 'package:flutter/material.dart';

class Header2 extends StatelessWidget {
  String title;
  dynamic onPress;
  dynamic onBackPress;

  Header2(
      {Key? key,
        required this.title,
        required this.onPress,
        required this.onBackPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: onBackPress,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.028,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.8,

              child:  Text(

                title,


                style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),

      ],
    );
  }
}
