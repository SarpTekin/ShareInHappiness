import 'package:flutter/material.dart';
import 'package:shareinhappiness/components/custom_suffix_icon.dart';
import 'package:shareinhappiness/components/default_button.dart';
import 'package:shareinhappiness/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              buildEditEmail(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              buildEditName(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              buildEditSurname(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              buildEditPassword(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              buildEditBio(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
            ],
          )),
    );
  }

  TextFormField buildEditEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      decoration: InputDecoration(
        labelText: "E-mail",
        hintText: "senakaratas@gmail.com",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEditName() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Sena",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEditSurname() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: "Surname",
        hintText: "Karataş",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEditPassword() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "*********",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEditBio() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: "Bio",
        hintText: "Hello i am Sena Karataş i love chicken wing please help me",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
