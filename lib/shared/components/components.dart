import 'package:flutter/material.dart';

Widget defaultButton({
  Color background = Colors.blue, //عملناهم كده عشان هما common use
  double width = double.infinity, //عملناهم كده عشان هما common use
  bool isToUppercase = true,
  double radius = 5,
  required Function function,
  required String text,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      width: width,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  final String? Function(String?)? onSubmit,
  final String? Function(String?)? onChanged,
  bool ispassword = false,
  required String? Function(String?)? validate,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? suffixPressed,
}) =>
    TextFormField(
      validator: validate,
      controller: controller,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      obscureText: ispassword,
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix),
                onPressed: () {
                  suffixPressed!();
                },
              )
            : null,
      ),
    );



