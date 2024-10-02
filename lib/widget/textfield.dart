import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;

  const CustomTextfield({
    Key? key,
    required this.controller,
    this.label,
    this.hint,
  }) : super(key: key);

  @override
  State<CustomTextfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      // height: 200,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}