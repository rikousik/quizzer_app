import 'package:flutter/material.dart';
import 'package:ui_demo/widgets/custom_appbar.dart';
import 'package:ui_demo/screens/login_screen.dart';
import 'package:ui_demo/widgets/home_invite_friend.dart';
import 'package:ui_demo/widgets/image_carousel.dart';
import 'package:ui_demo/widgets/navigation_bar.dart';
import 'package:ui_demo/widgets/unfinished_game_item.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
          child: Column(children: [
            CustomAppBar(title: 'Home'),
            Container(
              height: 1,
              color: Colors.white, // You can customize the color of the line
            ),
            Container(
              height: MediaQuery.of(context).size.height - kToolbarHeight - 41,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 1,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(children: [
                        const HomeInviteFriend(),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Unfinished Games",
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(59, 79, 125, 1),
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ));
                              },
                              child: Row(
                                children: [
                                  const Text(
                                    "View all",
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(59, 79, 125, 1),
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(width: 1),
                                  Image.asset(
                                      "assets/images/arrow_right_1.png"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 90,
                            initialPage: 0,

                            viewportFraction:
                                0.5, // Adjust the fraction of the viewport that each item occupies
                            enableInfiniteScroll:
                                true, // Set to false if you don't want infinite scrolling
                            reverse:
                                false, // Set to true if you want the items to be displayed in reverse order
                            autoPlay: false, // Set to true for auto-play
                            autoPlayInterval: Duration(
                                seconds: 3), // Adjust the auto-play interval
                            autoPlayAnimationDuration: Duration(
                                milliseconds:
                                    800), // Adjust the animation duration
                            autoPlayCurve: Curves
                                .fastOutSlowIn, // Adjust the animation curve
                          ),
                          items: [
                            UnfinishedGameItem(
                              title: "Game 1",
                              gameItems: ["Alltag/Haushalt", "Scherz"],
                            ),
                            UnfinishedGameItem(
                              title: "Game 2",
                              gameItems: ["Alltag/Haushalt", "Scherz"],
                            ),
                            // Add more items as needed
                          ].map<Widget>((item) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  child: item,
                                );
                              },
                            );
                          }).toList(),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "New Game",
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(59, 79, 125, 1),
                                fontSize: 16,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ));
                              },
                              child: Row(
                                children: [
                                  const Text(
                                    "View all",
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(59, 79, 125, 1),
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(width: 1),
                                  Image.asset(
                                      "assets/images/arrow_right_1.png"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ImageCarousel(
                                images: [
                                  ImageModel(
                                    url: 'assets/images/Rectangle1.png',
                                    title: 'Quiz 1',
                                  ),
                                  ImageModel(
                                    url: 'assets/images/Rectangle2.png',
                                    title: 'Quiz 2',
                                  ),
                                  ImageModel(
                                      url: 'assets/images/Rectangle1.png',
                                      title: 'Quiz 3'),
                                  ImageModel(
                                      url: 'assets/images/Rectangle2.png',
                                      title: 'Quiz 4'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ])),
                  CustomNavigationBar()
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
