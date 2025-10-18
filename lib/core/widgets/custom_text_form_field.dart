import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.focusNode,
    required this.nextAction,
    required this.type,
    this.isPassword = false,
    this.suffixIcon,
    required this.controller,
  });
  final String label;
  final FocusNode focusNode;
  final Function ()nextAction;
  final TextInputType type;
  final bool isPassword;
  final IconButton? suffixIcon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: nextAction,
      textInputAction:isPassword?TextInputAction.done: TextInputAction.next,
      focusNode: focusNode,
      controller: controller,
      validator:label == 'Name'?null: (value){
        if(value==null || value.isEmpty){
          return '$label is required';
        }
        return null;
      },
      obscureText: isPassword,
      keyboardType: type,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
        label: Text(label),
      ),
    );
  }
}
