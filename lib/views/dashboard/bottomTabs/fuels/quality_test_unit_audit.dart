import 'package:flutter/material.dart';
import 'package:total_parco/utils/components/context_header.dart';
import 'package:total_parco/utils/components/date_selector.dart';
import 'package:total_parco/utils/components/drop_down.dart';
import 'package:total_parco/utils/components/input.dart';
import 'package:total_parco/utils/components/radio_button.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/header.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/header2.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/physical_test_dropdown.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/show_quantity_test_dropdown.dart';
import 'package:total_parco/views/dashboard/bottomTabs/components/show_water_detection_dropdown.dart';

class QualityTestUnitAudit extends StatefulWidget {
  const QualityTestUnitAudit({Key? key}) : super(key: key);

  @override
  State<QualityTestUnitAudit> createState() => _QualityTestUnitAuditState();
}

class _QualityTestUnitAuditState extends State<QualityTestUnitAudit> {
  TextEditingController imsController = TextEditingController();
  String siteNamePlaceholderValue = 'Select';
  bool isSiteName = false;
  bool isPhysicalTestHiSuper = false;
  bool isPhysicalTestExcellium = false;
  bool isPhysicalTestDiesel = false;
  bool isNoozle1 = false;
  bool isNoozle2 = false;
  bool isNoozle3 = false;
  bool isNoozle4 = false;
  bool isNoozle5 = false;
  bool isTank1 = false;
  bool isTank2 = false;
  bool isTank3 = false;
  bool isTank4 = false;
  bool isTank5 = false;
  bool isWaterDetection = false;
  String testStatusSelectedValue = '';
  var siteNameList = ['Lahore', 'Wapda town', 'Muslim town', 'Garden Town'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Header2(
                  title: 'Quality Testing Unit',
                  onPress: null,
                  onBackPress: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'IMS #',
                  placeholder: "Enter",
                  leftIcon: null,
                  leftIconPress: [],
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                DateSelector(
                  label: 'Date of Visit',
                  placeholder: 'Select',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ContextHeader(
                  label: 'Site Detail',
                  icon: Icons.keyboard_arrow_down_sharp,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ShowDropDown(
                  onPress: () {
                    setState(() {
                      isSiteName = !isSiteName;
                    });
                  },
                  isDropDownOpen: isSiteName,
                  dropDownLabel: 'Site Name',
                  list: siteNameList,
                  itemOnPress: (index) {
                    setState(() {
                      siteNamePlaceholderValue = siteNameList[index];
                      isSiteName = false;
                    });
                  },
                  placeholder: siteNamePlaceholderValue,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'Location',
                  placeholder: "Select",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'Region',
                  placeholder: "Select",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'TM Sales',
                  placeholder: "Select",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'RM Sales',
                  placeholder: "Select",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'RMPM ',
                  placeholder: "Select",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                ContextHeader(
                  label: 'Physical Test',
                  icon: Icons.keyboard_arrow_down_sharp,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ShowPhysicalDropDown(
                  placeholder: 'Hi-Super',
                  onPress: () {
                    setState(
                        () => {isPhysicalTestHiSuper = !isPhysicalTestHiSuper});
                  },
                  isDropDownOpen: isPhysicalTestHiSuper,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ShowPhysicalDropDown(
                  placeholder: 'Excellium',
                  onPress: () {
                    setState(() =>
                        {isPhysicalTestExcellium = !isPhysicalTestExcellium});
                  },
                  isDropDownOpen: isPhysicalTestExcellium,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ShowPhysicalDropDown(
                  placeholder: 'Diesel',
                  onPress: () {
                    setState(
                        () => {isPhysicalTestDiesel = !isPhysicalTestDiesel});
                  },
                  isDropDownOpen: isPhysicalTestDiesel,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Test Status'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            RadioButtonExample(
                              optionText: 'Ok',
                              optionValue: 'Ok',
                              selectedOption: testStatusSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  testStatusSelectedValue = value;
                                });
                              },
                            ),
                            RadioButtonExample(
                              optionText: 'Not OK',
                              optionValue: 'Not OK',
                              selectedOption: testStatusSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  testStatusSelectedValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ContextHeader(
                  label: 'Flash Point Test (°C)',
                  icon: Icons.keyboard_arrow_down_sharp,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'Diesel ',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ContextHeader(
                  label: 'Distillation',
                  icon: Icons.keyboard_arrow_down_sharp,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'Initial B Point °C ',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ContextHeader(
                  label: 'Recovery °C',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: '10%',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: '50%',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: '90%',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'End Point °C',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'Residual Volume %',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'Loss Volume %',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'Recovery Volume % ',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Test Status'),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              child: Row(
                                children: [
                                  RadioButtonExample(
                                    optionText: 'Ok',
                                    optionValue: 'Ok',
                                    selectedOption: testStatusSelectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        testStatusSelectedValue = value;
                                      });
                                    },
                                  ),
                                  RadioButtonExample(
                                    optionText: 'Not OK',
                                    optionValue: 'Not OK',
                                    selectedOption: testStatusSelectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        testStatusSelectedValue = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Test Repeated'),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 160,
                              child: Row(
                                children: [
                                  RadioButtonExample(
                                    optionText: 'Yes',
                                    optionValue: 'Yes',
                                    selectedOption: testStatusSelectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        testStatusSelectedValue = value;
                                      });
                                    },
                                  ),
                                  RadioButtonExample(
                                    optionText: 'No',
                                    optionValue: 'No',
                                    selectedOption: testStatusSelectedValue,
                                    onChanged: (value) {
                                      setState(() {
                                        testStatusSelectedValue = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sample Detained for Lab Test'),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        child: Row(
                          children: [
                            RadioButtonExample(
                              optionText: 'Yes',
                              optionValue: 'Yes',
                              selectedOption: testStatusSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  testStatusSelectedValue = value;
                                });
                              },
                            ),
                            RadioButtonExample(
                              optionText: 'No',
                              optionValue: 'No',
                              selectedOption: testStatusSelectedValue,
                              onChanged: (value) {
                                setState(() {
                                  testStatusSelectedValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ContextHeader(
                  label: 'Product Marker Test',
                  icon: Icons.keyboard_arrow_down_sharp,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          RadioButtonExample(
                            optionText: 'Yes (+ve)',
                            optionValue: 'Yes',
                            selectedOption: testStatusSelectedValue,
                            onChanged: (value) {
                              setState(() {
                                testStatusSelectedValue = value;
                              });
                            },
                          ),
                          RadioButtonExample(
                            optionText: 'No (-ve)',
                            optionValue: 'No',
                            selectedOption: testStatusSelectedValue,
                            onChanged: (value) {
                              setState(() {
                                testStatusSelectedValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                CustomFormField(
                  label: 'Percentage ',
                  placeholder: "Enter",
                  error: null,
                  textEditingController: imsController,
                  inputFormatters: [],
                  inputValidator: (val) {},
                  onChangeValue: (v) => v,
                  obsecureText: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                ContextHeader(
                  label: 'Quantity Test',
                  icon: Icons.keyboard_arrow_down_sharp,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ShowQuantityTestDropDown(
                      placeholder: '1- Nozzle',
                      onPress: () {
                        setState(() => {isNoozle1 = !isNoozle1});
                      },
                      isDropDownOpen: isNoozle1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ShowQuantityTestDropDown(
                      placeholder: '2- Nozzle',
                      onPress: () {
                        setState(() => {isNoozle2 = !isNoozle2});
                      },
                      isDropDownOpen: isNoozle2,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ShowQuantityTestDropDown(
                      placeholder: '3- Nozzle',
                      onPress: () {
                        setState(() => {isNoozle3 = !isNoozle3});
                      },
                      isDropDownOpen: isNoozle3,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ShowQuantityTestDropDown(
                      placeholder: '4- Nozzle',
                      onPress: () {
                        setState(() => {isNoozle4 = !isNoozle4});
                      },
                      isDropDownOpen: isNoozle4,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ShowQuantityTestDropDown(
                      placeholder: '5- Nozzle',
                      onPress: () {
                        setState(() => {isNoozle5 = !isNoozle5});
                      },
                      isDropDownOpen: isNoozle5,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ContextHeader(
                      label: 'Water Detection',
                      icon: Icons.keyboard_arrow_down_sharp,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    ShowWaterDetectionDropDown(
                      placeholder: 'Tank #1',
                      onPress: () {
                        setState(() => {isTank1 = !isTank1});
                      },
                      isDropDownOpen: isTank1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ShowWaterDetectionDropDown(
                      placeholder: 'Tank #1',
                      onPress: () {
                        setState(() => {isTank2 = !isTank2});
                      },
                      isDropDownOpen: isTank2,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ShowWaterDetectionDropDown(
                      placeholder: 'Tank #1',
                      onPress: () {
                        setState(() => {isTank3 = !isTank3});
                      },
                      isDropDownOpen: isTank3,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ShowWaterDetectionDropDown(
                      placeholder: 'Tank #1',
                      onPress: () {
                        setState(() => {isTank4 = !isTank4});
                      },
                      isDropDownOpen: isTank4,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),
                    ShowWaterDetectionDropDown(
                      placeholder: 'Tank #1',
                      onPress: () {
                        setState(() => {isTank5 = !isTank5});
                      },
                      isDropDownOpen: isTank5,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.28,
                          height: MediaQuery.of(context).size.width * 0.08,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(4))),
                          child: InkWell(
                            onTap: (){},
                            child:    Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
