import 'package:flutter/material.dart';
import 'package:job_list/src/constants/app_colors.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.subText,
    required this.icon,
  });
  final String title;
  final String subText;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: const Color.fromARGB(255, 110, 168, 165).withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 2)),
        ],
      ),
      child: Center(
        child: ListTile(
          leading: Icon(
            icon,
            size: 40,
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 10),
          ),
          subtitle: Text(
            subText,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
      ),
    );
  }
}