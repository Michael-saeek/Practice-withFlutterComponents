import 'package:flutter/material.dart';

class CustomFieldText extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboard;
  final bool obscure;

  /* Capturando campos dentro del input*/
  final String propertyValues;
  final Map<String, String> formValues;

  const CustomFieldText({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboard,
    this.obscure = false,
    required this.propertyValues,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboard,
      obscureText: obscure,
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[propertyValues] = value;
        print(formValues);
      },
      validator: (value) {
        if (value == null) {
          return 'Este campo es requerido';
        }

        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
