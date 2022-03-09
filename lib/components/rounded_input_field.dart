import 'package:flutter/material.dart';
import 'package:health_tracking_app/components/text_field_container.dart';
import 'package:health_tracking_app/helpers/appcolors.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: AppColors.MAIN_COLOR,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
