import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String roundedBtnText;
  final Color roundedBtnColor;
  final VoidCallback onPressedRoundedBtn;

  RoundedButton(
      {required this.roundedBtnColor,
      required this.roundedBtnText,
      required this.onPressedRoundedBtn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        elevation: 5,
        color: roundedBtnColor,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onPressedRoundedBtn,
          minWidth: 200,
          height: 42,
          child: Text(
            roundedBtnText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
