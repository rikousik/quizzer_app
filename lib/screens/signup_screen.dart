import 'package:flutter/material.dart';
import 'package:ui_demo/screens/verify_screen.dart';
import 'package:ui_demo/widgets/submit_button.dart';
import 'package:ui_demo/widgets/text_input_widget.dart';
import 'package:ui_demo/widgets/custom_appbar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
                CustomAppBar(title: 'Sign UP'),
                const SizedBox(
                  height: 41,
                ),
                const SizedBox(height: 40),
                const Text(
                  "Create An Account",
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
                    "Sign Up",
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
                  hintText: "Last Name",
                  icon: "assets/images/profile.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                TextInputWidget(
                  hintText: "Age",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
