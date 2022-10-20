import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool isPassword;

  final String formPropery;
  final Map<String, String> formValues;

  const CustomInput({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.isPassword = false,
    required this.formPropery,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        // initialValue: 'Kaze Makoto',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: isPassword,
        onChanged: (value) => formValues[formPropery] = value,
        validator: (value) {
          if (value == null) return 'Este campo es requerido.';
          return value.length < 3 ? 'Mínimo 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          // counterText: 'hola',
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          // prefixIcon: Icon(Icons.verified_user_outlined),
          icon: icon == null ? null : Icon(icon),
        ));
  }
}
