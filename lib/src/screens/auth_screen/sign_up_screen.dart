import 'package:flutter/material.dart';
import 'package:job_list/src/constants/app_colors.dart';
import 'package:job_list/src/screens/auth_screen/sign_in_screen.dart';
import 'package:job_list/src/screens/onboarding_screen/onboarding_screen.dart';
import 'package:job_list/src/widgets/already_text_notice.dart';
import 'package:job_list/src/widgets/custom_button.dart';
import 'package:job_list/src/widgets/custom_textfield.dart';
import 'package:job_list/src/widgets/google_button.dart';
import '../../constants/constants.dart';
import '../../widgets/or_divider.dart';
import '../home_screen/home_nav_bar.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool fieldsReadOnly = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool changeEmailColor = false;
  bool changePassColor = false;
  bool seePass = false;
  String? email;
  String? pass;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
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
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "Create new \naccount",
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 30,
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
                      changePassColor = false;
                    });
                  },
                ),

                const SizedBox(
                  height: 20,
                ),
                // password textfield
                CustomTextField(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: pass != null && pass != "" || changePassColor
                        ? Colors.black
                        : AppColors.bgGrey,
                  ),
                  hintText: "Enter your password",
                  obscureText: seePass,
                  keyboardType: TextInputType.visiblePassword,
                  readOnly: fieldsReadOnly,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        seePass = !seePass;
                      });
                    },
                    child: Icon(
                      seePass
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off,
                      color: pass != null && pass != "" || changePassColor
                          ? Colors.black
                          : AppColors.bgGrey,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This field cannot be empty";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    pass = value;
                  },
                  onTap: () {
                    setState(() {
                      changePassColor = true;
                      changeEmailColor = false;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  label: "Sign Up",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Processing Data'),
                        ),
                      );
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => HomeNavBar(),
                          ),
                          (route) => false);
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                OrDivider(size: size),
                const SizedBox(
                  height: 20,
                ),
                GoogleButton(
                  label: "Sign up with Google",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => HomeNavBar(),
                        ),
                        (route) => false);
                  },
                ),
                SizedBox(
                  height: size.height / 5,
                ),
                AlreadyTextNotice(
                  label: const Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  secondText: "Login",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => const SignInScreen(),
                      ),
                    );
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
