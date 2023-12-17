import 'package:flutter/material.dart';
import 'package:total_parco/utils/components/drop_down.dart';
import 'package:total_parco/utils/components/input_3.dart';

class ShowBottomSheet extends StatefulWidget {
  ShowBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<ShowBottomSheet> createState() => _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {
  bool isSiteName = false;
  bool isLocation = false;
  bool isRegion = false;
  bool isTMSales = false;
  bool isRMSales = false;

  var siteNameList = ['Parco', 'Total', 'Indigo', 'Chill', 'Rilly'];
  var locationNameList = ['Lahore', 'Multan', 'NewYork', 'Karachi', 'Dhelhi'];
  var regionNameList = ['Asia', 'South', 'North', 'West'];
  var tmSalesNameList = ['A', 'B', 'C', 'B', 'D'];
  var rmSalesNameList = ['A', 'B', 'C', 'B', 'D'];

  String siteNamePlaceholderValue='Select';
  String locationNamePlaceholderValue='Select';
  String regionNamePlaceholderValue='Select';
  String tmSalesNamePlaceholderValue='Select';
  String rmSalesNamePlaceholderValue='Select';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(18.0),
            topRight: const Radius.circular(18.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filters",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Reset Filters",
                    style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ShowDropDown(

                    onPress: () {
                      setState(() {
                        isSiteName = !isSiteName;
                      });
                    },
                    isDropDownOpen: isSiteName,
                    dropDownLabel: 'Site Name',
                    list: siteNameList,
                    itemOnPress: (index){
                      setState((){
                        siteNamePlaceholderValue=siteNameList[index];
                        isSiteName=false;
                      });
                    },
                    placeholder: siteNamePlaceholderValue,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ShowDropDown(
                    onPress: () {
                      setState(() {
                        isLocation = !isLocation;
                      });
                    },
                    isDropDownOpen: isLocation,
                    dropDownLabel: 'Location',
                    list: locationNameList,
                    itemOnPress: (index){
                      setState((){
                        locationNamePlaceholderValue=locationNameList[index];
                        isLocation=false;
                      });
                    },
                    placeholder: locationNamePlaceholderValue,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ShowDropDown(
                    onPress: () {
                      setState(() {
                        isRegion = !isRegion;
                      });
                    },
                    isDropDownOpen: isRegion,
                    dropDownLabel: 'Region',
                    list: regionNameList,
                    itemOnPress: (index){
                      setState((){
                        regionNamePlaceholderValue=regionNameList[index];
                        isRegion=false;
                      });
                    },
                    placeholder: regionNamePlaceholderValue,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ShowDropDown(
                    onPress: () {
                      setState(() {
                        isTMSales = !isTMSales;
                      });
                    },
                    isDropDownOpen: isTMSales,
                    dropDownLabel: 'TM Sales',
                    list: tmSalesNameList,
                    itemOnPress: (index){
                      setState((){
                        tmSalesNamePlaceholderValue=tmSalesNameList[index];
                        isTMSales=false;
                      });
                    },
                    placeholder: tmSalesNamePlaceholderValue,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ShowDropDown(
                    onPress: () {
                      setState(() {
                        isRMSales = !isRMSales;
                      });
                    },
                    isDropDownOpen: isRMSales,
                    dropDownLabel: 'RM Sales',
                    list: rmSalesNameList,
                    itemOnPress: (index){
                      setState((){
                        rmSalesNamePlaceholderValue=rmSalesNameList[index];
                        isRMSales=false;
                      });
                    },
                    placeholder: rmSalesNamePlaceholderValue,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ShowDropDown(
                    onPress: () {
                      // setState((){
                      //   isDropDown=!isDropDown;
                      // });
                    },
                    isDropDownOpen: false,
                    dropDownLabel: 'Date of Visit',
                    list: [],
                    itemOnPress: null,
                    placeholder: 'Select',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Color(0xFFECEFF1),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Center(
                        child: Text(
                      'Clear All',
                      style: TextStyle(color: Color(0xFF081A53), fontSize: 14),
                    )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                        child: Text(
                      'Apply Filters',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}

// showSheet(context, dropDownOnPress, isDropDown, dropDownLabel) {
//   showModalBottomSheet(
//    context: context,
//    isScrollControlled: true,
//    backgroundColor: Colors.transparent,
//    builder: (context) {
//      return GestureDetector(
//        onTap: () => Navigator.of(context).pop(),
//        child: chil,
//      );
//    },
//  );
