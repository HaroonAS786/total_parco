import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  String title;
  dynamic onPress;
  bool isLoader;
  ButtonComponent({Key? key, required this.title,required this.onPress,required this.isLoader}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
        ),
        onPressed: onPress,
        child: isLoader?
            Center(
              child: CircularProgressIndicator(
                color: Colors.white,

              ),
            )
            :Text(
          title,
          style:  TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
