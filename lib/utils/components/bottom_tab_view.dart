import 'package:flutter/material.dart';

class BottomTabView extends StatelessWidget {
  String label;
  String url;
  dynamic onPressed;
  bool isSelected;

  BottomTabView(
      {Key? key,
      required this.label,
      required this.url,
      required this.onPressed,
        required this.isSelected,


      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(

          decoration: BoxDecoration(
              color: isSelected ?Colors.redAccent.withOpacity(.1):Colors.white,
            border:Border(
              right: BorderSide(width: .5, color: Colors.black12)
            )
          ),
          width: 102,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                url,
                width: 32,
                height: 32,
              ),
              SizedBox(
                height: 8,
              ),
              Text(label)
            ],
          ),
        ),
      ),
    );
  }
}
