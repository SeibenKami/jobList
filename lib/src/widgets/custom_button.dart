import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.label, this.onTap,
  });
  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.blue, borderRadius: BorderRadius.circular(25)),
        child:  Center(
          child: Text(
           label,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
