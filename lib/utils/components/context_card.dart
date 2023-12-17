import 'package:flutter/material.dart';

class ContextCard extends StatelessWidget {
  String label;
  String image;
  dynamic onPress;

  ContextCard({Key? key, required this.label, required this.image,required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 88,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  image,
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  label,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/arrow_forward.png',
                  height: 24,
                  width: 24,
                ),
                SizedBox(
                  width: 6,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
