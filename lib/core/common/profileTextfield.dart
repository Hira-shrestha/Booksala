import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profiletextfield extends StatelessWidget {
  Profiletextfield(
      {super.key, this.controller, this.readOnly = true, this.fieldName = ''});

  TextEditingController? controller;
  bool readOnly;
  String fieldName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        // enabled: editingState,
        controller: controller,
        readOnly: readOnly,
        autocorrect: false,
        decoration: InputDecoration(
          label: Text(fieldName),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ));
  }
}
