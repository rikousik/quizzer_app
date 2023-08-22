import 'package:flutter/material.dart';

class HomeInviteFriend extends StatelessWidget {
  const HomeInviteFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 140, // Adjust the height as needed
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(81, 99, 224, 1), // Left color
              Color.fromRGBO(136, 147, 240, 1), // Right color
            ],
          ),
          image: DecorationImage(
              image: AssetImage("assets/images/Vector3.png"),
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fitWidth),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.only(left: 15, top: 10),
        child: Stack(
          //alignment: Alignment.bottomRight,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Text(
                      'Play quiz together with your friends now !',
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "SF Pro Display",
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20), // Adjust spacing as needed

                  Container(
                    width: 107,
                    height: 34,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(230, 231, 253, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'Invite Friend',
                        style: TextStyle(
                          color: Color.fromRGBO(59, 79, 125, 1),
                          fontFamily: "SF Pro Display",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 6,
                left: 229,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    color: Colors.transparent,
                  ),
                  child: Image.asset("assets/images/friend1.png",
                      fit: BoxFit.cover),
                )),
            Positioned(
                top: 43,
                left: 193,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/friend2.png",
                      fit: BoxFit.cover),
                )),
            Positioned(
                top: 14,
                left: 265,
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/friend3.png",
                      fit: BoxFit.cover),
                )),
            Positioned(
                top: 34,
                left: 220,
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/friend4.png",
                      fit: BoxFit.cover),
                )),
            Positioned(
                top: 76,
                left: 192,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/friend5.png",
                      fit: BoxFit.cover),
                )),
            Positioned(
                top: 83,
                left: 255,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/friend6.png",
                      fit: BoxFit.cover),
                )),
            Positioned(
                top: 60,
                left: 278,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/images/friend7.png",
                      fit: BoxFit.cover),
                )),
          ],
        ));
  }
}
