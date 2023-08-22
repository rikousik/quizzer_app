import 'package:flutter/material.dart';
import 'package:ui_demo/screens/start_game.dart';
import 'package:ui_demo/widgets/custom_appbar.dart';
import 'package:ui_demo/widgets/submit_button.dart';
import 'package:ui_demo/widgets/verify_sms_input.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });*/
  }

  @override
  Widget build(BuildContext context) {
    const textColor = Color.fromRGBO(59, 79, 125, 1);
    return Scaffold(
        body: Container(
            alignment: AlignmentDirectional.topStart,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                CustomAppBar(title: 'Log In'),
                const SizedBox(
                  height: 41,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 32), // Adjust the padding value as needed
                  child: Align(
                    alignment:
                        Alignment.centerLeft, // Align the text to the left
                    child: Text(
                      'Verification',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: textColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text('Enter verification code',
                    style: TextStyle(
                        fontFamily: 'poppins', fontSize: 16, color: textColor)),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VerifySmsInput(),
                    SizedBox(
                      width: 25,
                    ),
                    VerifySmsInput(),
                    SizedBox(
                      width: 25,
                    ),
                    VerifySmsInput(),
                    SizedBox(
                      width: 25,
                    ),
                    VerifySmsInput()
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("If you didn't receive a code!",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 12,
                            color: textColor)),
                    Padding(
                      padding: EdgeInsets.only(left: 1),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {
                            // Handle resend action here
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Text(
                            "Resend",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color:
                                  textColor, // Change the text color if needed
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 56,
                ),
                SubmitButton(
                  title: 'Verify',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StartGameScreen(),
                        ));
                  },
                ),
              ],
            )));
  }
}
