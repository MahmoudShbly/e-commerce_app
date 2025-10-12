import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.lable,
    this.validator,
    required this.type,
    this.isPassword = false,  this.suffixIcon,
  });
  final String lable;
  final String? Function(String?)? validator;
  final TextInputType type;
  final bool isPassword;
  final IconButton? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      validator: validator,
      obscureText: isPassword,
      keyboardType: type,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
        label: Text(lable),
      ),
    );
  }
}
