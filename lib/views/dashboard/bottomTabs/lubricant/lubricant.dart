import 'package:flutter/material.dart';
import 'package:total_parco/utils/components/context_card.dart';

class Lubricant extends StatefulWidget {
  const Lubricant({Key? key}) : super(key: key);

  @override
  State<Lubricant> createState() => _LubricantState();
}

class _LubricantState extends State<Lubricant> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                  'Lubricant',
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
                label: "Batch Clearance",
                image: "assets/images/batch_clearance.png",
                onPress: null,
              ),
              SizedBox(
                height: 25,
              ),
              ContextCard(
                label: "Packaging Material Inspection",
                image: "assets/images/product_inspection.png",
                onPress: null,
              ),
              SizedBox(
                height: 25,
              ),
              ContextCard(
                label: "Quality Lab",
                image: "assets/images/package_inspection.png",
                onPress: null,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
