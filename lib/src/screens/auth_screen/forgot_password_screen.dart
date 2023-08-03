import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/app_colors.dart';
import '../../constants/constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  String? email;
  final _formKey = GlobalKey<FormState>();
  bool changeEmailColor = false;
  bool fieldsReadOnly = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(greyBg), fit: BoxFit.cover),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height / 10,
                ),
                const Text(
                  "Enter Your Email Address",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 50,
                ),

                //email textfield
                CustomTextField(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: email != null && email != "" || changeEmailColor
                        ? Colors.black
                        : AppColors.bgGrey,
                  ),
                  hintText: "Enter your email",
                  keyboardType: TextInputType.emailAddress,
                  readOnly: fieldsReadOnly,
                  onChanged: (value) {
                    email = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field cannot be empty";
                    }
                    return null;
                  },
                  onTap: () {
                    setState(() {
                      changeEmailColor = true;
                    });
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButton(
                  label: "Proceed",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Email Sent')),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
