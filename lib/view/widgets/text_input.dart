import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final  String label;
  final IconData icon;
  final bool isHide;
  const TextInputField({super.key, required this.controller, required this.label, required this.icon,  this.isHide=false});

  @override
  Widget build(BuildContext context) {
    return TextField(

      obscureText: isHide,
      controller: controller,decoration: InputDecoration(
      icon: Icon(icon),label: Text(label),
    ) ,);
  }
}
