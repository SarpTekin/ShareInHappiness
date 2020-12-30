import 'package:flutter/material.dart';

class Patient {
  final String pName, address, description, id, phoneNum;
  final List<String> images, conditions, wishlist;
  final int age;

  Patient({
    @required this.description,
    @required this.id,
    @required this.phoneNum,
    @required this.pName,
    @required this.address,
    @required this.images,
    @required this.conditions,
    @required this.wishlist,
    @required this.age,
  });
}
// Demo Patients

List<Patient> demoPatients = [
  Patient(
      description: "She has a boyfriend with +3.5 GPA but he doesn't help her",
      id: "1234567",
      phoneNum: "0543534",
      pName: "Sena Karataş",
      address: "Bilkent B binası",
      images: [
        "assets/images/sena.png",
        "assets/images/burak.png",
        "assets/images/sena.png",
        "assets/images/sena.png",
      ],
      conditions: ["Low GPA", "Pink Hair"],
      wishlist: ["Studybuddy", "A reason to live"],
      age: 25),
  Patient(
      description: "She has a boyfriend with +3.5 GPA but he doesn't help her",
      id: "1234567",
      phoneNum: "0543534",
      pName: "Burak Alaydın",
      address: "Bilkent B binası",
      images: [
        "assets/images/burak.png",
        "assets/images/sena.png",
        "assets/images/burak.png",
        "assets/images/burak.png",
      ],
      conditions: ["Low Height", "Pink Hair"],
      wishlist: ["Studybuddy", "A reason to live"],
      age: 25),
  Patient(
      description: "She has a boyfriend with +3.5 GPA but he doesn't help her",
      id: "1234567",
      phoneNum: "0543534",
      pName: "Sena Karataş",
      address: "Bilkent B binası",
      images: [
        "assets/images/sena.png",
        "assets/images/sena.png",
        "assets/images/sena.png",
        "assets/images/sena.png",
      ],
      conditions: ["Low GPA", "Pink Hair"],
      wishlist: ["Studybuddy", "A reason to live"],
      age: 25),
  Patient(
      description: "She has a boyfriend with +3.5 GPA but he doesn't help her",
      id: "1234567",
      phoneNum: "0543534",
      pName: "Sena Karataş",
      address: "Bilkent B binası",
      images: [
        "assets/images/sena.png",
        "assets/images/sena.png",
        "assets/images/sena.png",
        "assets/images/sena.png",
      ],
      conditions: ["Low GPA", "Pink Hair"],
      wishlist: ["Studybuddy", "A reason to live"],
      age: 25),
];
