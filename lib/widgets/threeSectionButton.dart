import 'package:flutter/material.dart';


Widget threeIconButton({
  required Widget buttonText,
  required IconData? buttonIcon,
  required void Function()? buttonAction,
  required Color? buttonColor,
}){
  return  TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
    label: buttonText,
  );
}