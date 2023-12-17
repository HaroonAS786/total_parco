import 'package:flutter/material.dart';
import 'package:total_parco/utils/components/context_card.dart';
import 'package:total_parco/utils/routes/routes.dart';

class Fuel extends StatefulWidget {
  const Fuel({Key? key}) : super(key: key);

  @override
  State<Fuel> createState() => _FuelState();
}

class _FuelState extends State<Fuel> {
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  'Fuel',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ContextCard(
                label: "Quality Testing Unit ",
                image: "assets/images/qualityTest.png",
                onPress: (){
                  Navigator.pushNamed(context, RoutesName.qualityTestUnit);
                },
              ),
              SizedBox(
                height: 25,
              ),
              ContextCard(
                label: "Pre-Departure Inspection",
                image: "assets/images/preDeparture.png",
                onPress: (){
                  Navigator.pushNamed(context, RoutesName.preDepartureInspection);
                },
              ),
              SizedBox(
                height: 25,
              ),
              ContextCard(
                label: "Quality Lab",
                image: "assets/images/qualityLab.png",
                onPress: (){
                  Navigator.pushNamed(context, RoutesName.qualityLab);
                },
              ),
              SizedBox(
                height: 25,
              ),
              ContextCard(
                label: "Quality Complaint",
                image: "assets/images/qualityComplaint.png",
                onPress: (){
                  Navigator.pushNamed(context, RoutesName.qualityComplaint);
                },
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
