import 'package:flutter/material.dart';
import 'package:shareinhappiness/consants.dart';
import 'package:shareinhappiness/models/Patient.dart';
import 'package:shareinhappiness/size_config.dart';

class PatientImages extends StatefulWidget {
  const PatientImages({
    Key key,
    @required this.patient,
  }) : super(key: key);

  final Patient patient;

  @override
  _PatientImagesState createState() => _PatientImagesState();
}

class _PatientImagesState extends State<PatientImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.patient.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.patient.images.length,
                (index) => buildSmallPreview(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        height: getProportionateScreenHeight(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedImage == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.asset(widget.patient.images[index]),
      ),
    );
  }
}
