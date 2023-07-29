
import 'package:flutter/material.dart';
import 'package:job_list/src/screens/auth_screen/sign_up_screen.dart';

void main(){
  runApp(const JobListApp());
}


class JobListApp extends StatelessWidget {
  const JobListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpScreen(),
    );
  }
}
