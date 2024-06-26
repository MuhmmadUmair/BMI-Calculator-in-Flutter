import 'package:flutter/material.dart';
import '../constants.dart';
class iconContant extends StatelessWidget {
  final IconData icon;
  final String label;
  iconContant({required this.icon, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelStyle
        ),
      ],
    );
  }
}
