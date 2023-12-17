import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class ShowPhysicalDropDown extends StatefulWidget {
  dynamic onPress;
  final String placeholder;
  final bool isDropDownOpen;

  ShowPhysicalDropDown(
      {Key? key,
      this.onPress,
      required this.isDropDownOpen,
      required this.placeholder})
      : super(key: key);

  @override
  State<ShowPhysicalDropDown> createState() => _ShowPhysicalTestDropDownState();
}

class _ShowPhysicalTestDropDownState extends State<ShowPhysicalDropDown> {





  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.052,

          decoration: BoxDecoration(
            color: widget.isDropDownOpen?Color(0xFFCFD8DC).withOpacity(0.3):Colors.white,
            borderRadius: widget.isDropDownOpen
                ? BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  )
                : BorderRadius.circular(4.0),
            border: widget.isDropDownOpen?Border.all(color: Color(0xFFCFD8DC)):Border.all(color: Colors.grey.withOpacity(.2),width: 1),
          ),
          child: InkWell(
            onTap: widget.onPress,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.placeholder,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Icon(widget.isDropDownOpen?Icons.keyboard_arrow_down_rounded:Icons.keyboard_arrow_right_outlined,color:widget.isDropDownOpen?Colors.black:Colors.grey.withOpacity(.6) ,)
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.003,
        ),
        widget.isDropDownOpen
            ? Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.0),
                  border: Border.all(color: Colors.grey.withOpacity(.5),width: .2),

                ),
                child: Container(
                  width:  MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(207, 216, 220, 0.02),
                  child: Column(
                    children: [
                      
                      physicalTestInputField('Color', (v)=>v, context, null, null, 'Enter', ''),
                      physicalTestInputField('Odour (If Applicable)', (v)=>v, context, null, null, 'Enter', ''),
                      physicalTestInputField('Density @15.6 ', (v)=>v, context, null, null, 'Enter', ''),
                    ],
                  ),
                ))
            : SizedBox()
      ],
    );
  }
}

Widget physicalTestInputField(label,onChangeValue,context,textEditingController,inputValidator,placeholder,error){
  return(
   Container(
     width: MediaQuery.of(context).size.width * 0.86,

     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(
           height: MediaQuery.of(context).size.height * 0.02,
         ),
         Text(label,style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500),),
         SizedBox(
           height: MediaQuery.of(context).size.height * 0.01,
         ),

         GestureDetector(

           child: Container(

             height: 34,
             decoration: BoxDecoration(

               borderRadius: BorderRadius.circular(2),
                 border: Border.all(color: Colors.grey)
             ),
             child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 11.0),
            hintText: placeholder,

            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,


          ),

             ),
           )


         )
       ],
     ),
   )
  );
}
