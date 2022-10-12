import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rayy/Style/Theme.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    this.hintText,
    this.errorText,
    this.onChanged,
    this.keyboardType,
    this.autoFocus = true,
    this.obscureText = false,
    this.OnFieldSubmitted,
    this.initalValue,
    this.validator,
    this.inputFormatters,
    this.focusNode,
  }) : super(key: key);
  final bool autoFocus;
  final String? hintText;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final String? errorText;
  final Function(String)? onChanged;
  final Function(String)? OnFieldSubmitted;
  final String Function(String?)? validator;
  final String? initalValue;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: TextFormField(
          textAlign: TextAlign.center,
          focusNode: focusNode,
          onChanged: onChanged,
          obscureText: obscureText,
          keyboardType: keyboardType,
          onFieldSubmitted: OnFieldSubmitted,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator ??
              (value) {
                if (value!.isEmpty) {
                  return "Please enter blank field";
                }
                return null;
              },
          initialValue: initalValue,
          inputFormatters: inputFormatters,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              fontSize: 32,
              color: primaryColor),
          decoration: InputDecoration(
              border: const UnderlineInputBorder(), labelText: hintText),
        ),
      ),
    );
  }
}
