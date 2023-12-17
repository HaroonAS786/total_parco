import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:total_parco/utils/components/bottom_sheet.dart';
import 'package:total_parco/utils/components/drop_down.dart';
import 'package:total_parco/utils/components/input_3.dart';

Future deleteDialog(context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)), //this right here
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/delete_logo.svg"),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Are you sure to want to Delete?",
                    style: TextStyle(fontSize: 16, color: Color(0xFF000000)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "All associated data will be Deleted",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Color(0xFF7B7B7B)),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            color: Color(0xFFE10031),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text(
                              'Yes',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.width * 0.10,
                        decoration: BoxDecoration(
                            color: Color(0xFFECEFF1),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text(
                              'No',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return ShowBottomSheet();
    },
  );
}

// Future showSheet(context, dropDownOnPress, isDropDown, dropDownLabel) {
//   return showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     backgroundColor: Colors.transparent,
//     builder: (context) {
//       return GestureDetector(
//         onTap: () => Navigator.of(context).pop(),
//         child: Container(
//           color: Color.fromRGBO(0, 0, 0, 0.001),
//           child: GestureDetector(
//             onTap: () {},
//             child: DraggableScrollableSheet(
//               initialChildSize: 0.65,
//               builder: (_, controller) {
//                 return Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: const Radius.circular(18.0),
//                       topRight: const Radius.circular(18.0),
//                     ),
//                   ),
//                   child: ListView(
//                     children: [
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.03,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Filters",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: Color(0xFF000000),
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               "Reset Filters",
//                               style: TextStyle(
//                                   fontSize: 14, color: Color(0xFF555555)),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.02,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Column(
//                           children: [
//                           ShowDropDown(onPress: dropDownOnPress, isDropDownOpen: isDropDown),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.02,
//                             ),
//                             Input3(
//                               label: 'Location',
//                               placeholder: "Select",
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.02,
//                             ),
//                             Input3(
//                               label: 'Region',
//                               placeholder: "Select",
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.02,
//                             ),
//                             Input3(
//                               label: 'TM Sales',
//                               placeholder: "Select",
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.02,
//                             ),
//                             Input3(
//                               label: 'RM Sales',
//                               placeholder: "Select",
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.height * 0.02,
//                             ),
//                             Input3(
//                               label: 'Date of Visit',
//                               placeholder: "Select",
//                             ),
//                             SizedBox(
//                               height: MediaQuery.of(context).size.width * 0.1,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.05,
//                               width: MediaQuery.of(context).size.width * 0.45,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFECEFF1),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(4)),
//                               ),
//                               child: Center(
//                                   child: Text(
//                                 'Clear All',
//                                 style: TextStyle(
//                                     color: Color(0xFF081A53), fontSize: 14),
//                               )),
//                             ),
//                             Container(
//                               height: MediaQuery.of(context).size.height * 0.05,
//                               width: MediaQuery.of(context).size.width * 0.45,
//                               decoration: BoxDecoration(
//                                 color: Colors.red,
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(5)),
//                               ),
//                               child: Center(
//                                   child: Text(
//                                 'Apply Filters',
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 14),
//                               )),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuery.of(context).size.width * 0.03,
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }

// Widget showDropDown(context, onPress, isDropDownOpen, label) {
//   return Column(
//     children: [
//       Container(
//         height: MediaQuery.of(context).size.height * 0.05,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(4),
//           border: Border.all(color: Colors.grey),
//         ),
//         child: InkWell(
//           onTap: onPress,
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 6),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Select'),
//                 Icon(Icons.keyboard_arrow_down_rounded)
//               ],
//             ),
//           ),
//         ),
//       ),
//       isDropDownOpen
//           ? Container(
//               height: MediaQuery.of(context).size.height * 0.5,
//               decoration: BoxDecoration(
//                   border: Border(
//                       left: BorderSide(
//                         color: Colors.grey,
//                         width: 1,
//                       ),
//                       top: BorderSide(
//                         color: Colors.white,
//                         width: 0,
//                       ),
//                       right: BorderSide(
//                         color: Colors.grey,
//                         width: 1,
//                       ),
//                       bottom: BorderSide(
//                         color: Colors.grey,
//                         width: 1,
//                       ))),
//               child: ListView.builder(itemBuilder: ((context, index) {
//                 return ListTile(
//                   title: Text('hello'),
//                 );
//               })),
//             )
//           : SizedBox()
//     ],
//   );
// }
