import 'package:flutter/material.dart';
import 'package:ui_demo/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome To ,",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'poppins',
                    color: Color.fromRGBO(59, 79, 125, 1),
                    fontSize: 28,
                  ),
                ),
                const Text(
                  "Quizzer",
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontFamily: 'poppins',
                    color: Color.fromRGBO(59, 79, 125, 1),
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Row(
                    children: [
                      const Text(
                        "Lets Start",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w200,
                          color: Color.fromRGBO(59, 79, 125, 1),
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 12),
                      Image.asset("assets/images/arrow_right.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ]),
      ),
    ));
  }
}
