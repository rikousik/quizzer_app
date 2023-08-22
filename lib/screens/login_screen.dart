import 'package:flutter/material.dart';
import 'package:ui_demo/screens/signup_screen.dart';
import 'package:ui_demo/widgets/submit_button.dart';
import 'package:ui_demo/widgets/text_input_widget.dart';
import 'package:ui_demo/screens/verify_screen.dart';
import 'package:ui_demo/screens/category_screen.dart';
import 'package:ui_demo/widgets/custom_appbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: AlignmentDirectional.topStart,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(title: 'Log In'),

                const SizedBox(height: 40),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins',
                    color: Color.fromRGBO(59, 79, 125, 1),
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(59, 79, 125, 1),
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextInputWidget(
                  hintText: "Name",
                  icon: "assets/images/profile.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                TextInputWidget(
                  hintText: "Mobile Number",
                  icon: "assets/images/lock.png",
                ),
                const SizedBox(
                  height: 40,
                ),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pushReplacement(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => VerifyScreen(),
                //         ));
                //   },
                //   child: SubmitButton(
                //     title: "Send OTP",
                //   ),
                // ),
                SubmitButton(
                  title: "Send OTP",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyScreen(),
                        ));
                  },
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account? ",
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(59, 79, 125, 1),
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ));
                      },
                      child: const Text(
                        " Sign Up",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(0, 131, 255, 1),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
