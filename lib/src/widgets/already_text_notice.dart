import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AlreadyTextNotice extends StatelessWidget {
  const AlreadyTextNotice({
    super.key, required this.label, required this.secondText, this.onTap,
  });
  final Widget label;
  final String secondText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        label,
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
           secondText,
            style: TextStyle(color: AppColors.blue),
          ),
        ),
      ],
    );
  }
}
