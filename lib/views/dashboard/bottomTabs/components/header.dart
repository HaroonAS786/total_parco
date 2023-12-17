import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String title;
  dynamic onPress;
  dynamic onBackPress;

  Header(
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
             width: MediaQuery.of(context).size.width*0.5,

             child:  Text(

               title,
               overflow: TextOverflow.ellipsis,

               style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
             ),
           )
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.28,
          height: MediaQuery.of(context).size.width * 0.08,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(4))),
          child: InkWell(
            onTap: onPress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                Text(
                  'Start Audit',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
