import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.icon, required this.onPressed});
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      onPressed: onPressed,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}
