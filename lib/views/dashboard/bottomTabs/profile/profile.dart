import 'package:flutter/material.dart';
import 'package:total_parco/utils/routes/routes.dart';

import '../../../../utils/components/input_2.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        height: 32,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Color(0xFFE10031),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Center(
                          child: Text(
                            'Update',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    'Personal Information',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'First Name', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'Last Name', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'Role', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'Designation', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'Contact Number', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'Email', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Text(
                    'Password Settings',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'Current Password', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'New Password', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                Input2(label: 'Repeat Password', placeholder: 'Enter'),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RoutesName.login);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 32,
                   decoration: BoxDecoration(
                     color: Color(0xFFECEFF1),
                     borderRadius: BorderRadius.all(Radius.circular(4))
                   ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
