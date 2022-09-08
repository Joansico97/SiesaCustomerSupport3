import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:siesa_customer_support_web_3/utils/utils.dart';

class InputDecorations {
  static InputDecoration formInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: colors.azulSiesa,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: colors.azulSiesa,
          width: 2,
        ),
      ),
      hintText: hintText,
      labelText: labelText,
      labelStyle: styles.regularMedium(color: Colors.grey),
      prefix: Icon(
        prefixIcon != null ? prefixIcon : null,
        color: colors.azulSiesa,
      ),
    );
  }

  static InputDecoration searchInputDecoration({
    required String hintText,
    required String labelText,
  }) {
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      hintText: hintText,
      suffixIcon: IconButton(
        icon: const Icon(
          FontAwesomeIcons.filter,
          size: 15,
        ),
        onPressed: () {},
      ),
      labelText: labelText,
      labelStyle: styles.regularMedium(color: Colors.grey),
    );
  }
}
