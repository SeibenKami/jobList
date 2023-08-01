import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 2,
          width: size.width / 2 - 50,
          color: Colors.grey.shade200,
        ),
        const Text(
          "or",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Container(
          height: 2,
          width: size.width / 2 - 50,
          color: Colors.grey.shade200,
        ),
      ],
    );
  }
}
