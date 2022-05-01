import 'package:flutter/material.dart';

Widget defaultFormField({
  TextEditingController? controller,
  required TextInputType type,
  Function(String title)? onSubmit,
  Function(String title)? onChange,
  required Function(String? title) validate,
  bool isPassword = false,
  required String label,
  required IconData prefix,
  Function()? suffixPressed,
  IconData? suffix,
  BorderRadius? borderRadius,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      validator: (T) => validate(T),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Color(0xffF2EBE5),
        ),
        prefixIcon: Icon(
          prefix,
          color: Color(0xffF2EBE5),
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(suffix, color: Color(0xffF2EBE5)),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF2EBE5), width: 2.0),
          borderRadius: BorderRadius.circular(18.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF2EBE5), width: 2.0),
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
    );

class IconItem {
  final String urlImage;
  const IconItem({required this.urlImage});
}
