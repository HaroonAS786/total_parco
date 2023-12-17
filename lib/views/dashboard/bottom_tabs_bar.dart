import 'package:flutter/material.dart';
import 'package:total_parco/utils/components/bottom_tab_view.dart';
import 'package:total_parco/views/dashboard/bottomTabs/fuels/fuel.dart';
import 'package:total_parco/views/dashboard/bottomTabs/lubricant/lubricant.dart';
import 'package:total_parco/views/dashboard/bottomTabs/profile/profile.dart';

import 'bottomTabs/issues/issues.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex = 0;
   bool page1=true;
   bool page2=false;
   bool page3=false;
   bool page4=false;
  List<Widget> widgetList = [
    Fuel(),
    Lubricant(),
    Issues(),
    Profile()
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: widgetList[_selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 75,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              BottomTabView(
                label: 'Fuel',
                url: "assets/images/fuel.png",
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                    page1=true;
                    page2=false;
                    page3=false;
                    page4=false;

                  });
                },
                isSelected:page1,

              ),
              BottomTabView(
                label: 'Lubricant',
                url: "assets/images/lubricant.png",
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                    page1=false;
                    page2=true;
                    page3=false;
                    page4=false;
                  });
                },
                isSelected:page2,

              ),
              BottomTabView(
                label: 'Issues',
                url: "assets/images/issues.png",
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                    page1=false;
                    page2=false;
                    page3=true;
                    page4=false;
                  });
                },
                isSelected:page3,

              ),
              BottomTabView(
                label: 'Profile',
                url: "assets/images/profile.png",
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                    page1=false;
                    page2=false;
                    page3=false;
                    page4=true;
                  });
                },
                isSelected:page4,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
