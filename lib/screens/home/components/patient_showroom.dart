import 'package:flutter/material.dart';
import 'package:shareinhappiness/models/Patient.dart';
import 'package:shareinhappiness/screens/details/details_screen.dart';

import 'patient_card.dart';

class PatientShowroom extends StatelessWidget {
  const PatientShowroom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        PatientCard(
          id: 0,
          press: () {
            Navigator.pushNamed(context, DetailsScreen.routeName,
                arguments: PatientDetailsArgument(patient: demoPatients[0]));
          },
        ),
        PatientCard(
          id: 1,
          press: () {
            Navigator.pushNamed(context, DetailsScreen.routeName,
                arguments: PatientDetailsArgument(patient: demoPatients[1]));
          },
        ),
        PatientCard(
          id: 2,
          press: () {
            Navigator.pushNamed(context, DetailsScreen.routeName,
                arguments: PatientDetailsArgument(patient: demoPatients[2]));
          },
        ),
      ]),
    );
  }
}
