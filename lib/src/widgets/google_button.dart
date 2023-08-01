import 'package:flutter/material.dart';
import 'package:job_list/src/constants/constants.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    required this.label,
    this.onTap,
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(color: Colors.black),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(glogo),
            ),
            Text(
              label,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
