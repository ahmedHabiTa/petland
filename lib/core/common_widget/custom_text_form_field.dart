import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors.dart';


class CustomFormField extends StatefulWidget {
  final String? hintText;
  final String? initialValue;
  final String? labelText;
  final bool security;
  final double? width;
  final double? height;
  final TextInputType inputType;
  final String? validation;
  final String? Function(String?)? validationFunction;
  final Function(dynamic)? saved;
  final int maxLine;
  final Widget? prefix;
  final Widget? suffix;
  final bool suffixBool;
  final Function(String)? onChanged;
  final int? number;
  final TextEditingController? controller;
  final EdgeInsets? contentPadding;
  final Color? backgroundColor;
  final bool? readOnly;

  const CustomFormField(
      {Key? key,
        required this.hintText,
        this.initialValue,
        this.labelText,
        this.validationFunction,
        this.width,
        this.height,
        this.security = false,
        this.controller,
        this.inputType = TextInputType.text,
        this.validation = 'الحقل مطلوب',
        this.saved,
        this.maxLine = 1,
        this.prefix,
        this.suffixBool = false,
        this.suffix,
        this.onChanged,
        this.contentPadding,
        this.backgroundColor,
        this.readOnly,
        this.number = 0})
      : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool security = true;

  @override
  void initState() {
    super.initState();
    security = widget.security;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: const EdgeInsets.symmetric(vertical: 4),
      width: widget.width ?? MediaQuery.of(context).size.width * 0.9,
      height: widget.height ?? MediaQuery.of(context).size.height * 0.1,
      child: TextFormField(
        readOnly: widget.readOnly ?? false,
        initialValue: widget.initialValue,
        controller: widget.controller,
        onChanged: widget.onChanged,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: widget.labelText,
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffixBool
              ? IconButton(
              onPressed: () {
                setState(() {
                  security = !security;
                });
              },
              icon: const Icon(Icons.remove_red_eye, color: Colors.black))
              : null,
          contentPadding: widget.contentPadding,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 12.sp,
            color: const Color(0xFF4a4a4a),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: MyColors.meanColor,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: MyColors.meanColor,
              width: 1,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: const BorderSide(
              color: MyColors.meanColor,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: MyColors.meanColor,
              width: 1,
            ),
          ),
        ),
        validator: widget.validationFunction ??
                (value) {
              if (value!.isEmpty || value.length < widget.number!) {
                return widget.validation;
              }
              return null;
            },
        onSaved: widget.saved,
        onFieldSubmitted: widget.saved,
        obscureText: security,
        maxLines: widget.maxLine,
        keyboardType: widget.inputType,
      ),
    );
  }
}