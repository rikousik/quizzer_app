import 'package:flutter/material.dart';
import 'package:ui_demo/screens/home_screen.dart';
import 'package:ui_demo/widgets/submit_button.dart';

class StartGameScreen extends StatefulWidget {
  const StartGameScreen({super.key});

  @override
  State<StartGameScreen> createState() => _StartGameScreenState();
}

class _StartGameScreenState extends State<StartGameScreen> {
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
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset("assets/images/app_logo.png"),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Quizzer",
              style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(59, 79, 125, 1),
                fontSize: 32,
              ),
            ),
            const Spacer(),
            const Spacer(),
            SubmitButton(
              title: "Network",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
            ),
            const SizedBox(height: 16),
            const SubmitButton(
              title: "No Network",
            ),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}
