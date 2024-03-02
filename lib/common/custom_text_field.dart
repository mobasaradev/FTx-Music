import 'package:flutter/material.dart';
import 'package:ftx_music/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final String topLabel;
  final String hintText;
  final IconData? trailing;
  final void Function()? onTrailingTap;
  final bool? isSecured;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final bool? isRequired;
  final String? errorText;
  final bool? enabled;
  final int? minLines;
  final int? maxLines;
  final Color? fillColor;

  const CustomTextField({
    super.key,
    required this.topLabel,
    required this.hintText,
    this.trailing,
    this.onTrailingTap,
    this.isSecured,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.isRequired,
    this.errorText,
    this.enabled,
    this.minLines,
    this.maxLines,
    this.fillColor, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          style: AppTextTheme.textTheme.headlineLarge?.copyWith(fontSize: 14),
          obscureText: isSecured ?? false,
          keyboardType: keyboardType,
          onChanged: onChanged,
          validator: (value) =>
              value!.isEmpty ? 'field_required_validation' : null,
          enabled: enabled ?? true,
          minLines: minLines ?? 1,
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor ?? AppColors.grey,
            errorText: errorText,
            suffixIcon: trailing == null
                ? const SizedBox()
                : IconButton(
                    onPressed: onTrailingTap,
                    icon: Icon(
                      trailing,
                      color: AppColors.black..withOpacity(.5),
                    ),
                  ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.secondary.withOpacity(.5),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(5),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.black..withOpacity(.01)),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
