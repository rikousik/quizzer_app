import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageModel {
  final String url;
  final String title;

  ImageModel({required this.url, required this.title});
}

class ImageCarousel extends StatelessWidget {
  final List<ImageModel> images;

  ImageCarousel({required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150, // Adjust the height of the carousel
        autoPlay: false, // Set to true for automatic sliding
        //enlargeCenterPage: true, // Set to true for larger center image
        aspectRatio: 1 / 1, // Adjust the aspect ratio of images
        viewportFraction: 0.4, // Adjust this value for two items together
        autoPlayCurve: Curves.fastOutSlowIn, // Animation curve
        autoPlayInterval: Duration(seconds: 3), // Interval between slides
        autoPlayAnimationDuration:
            Duration(milliseconds: 800), // Animation duration
        initialPage: 1,
      ),
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: 122, //MediaQuery.of(context).size.width / 2 - 35,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      image.url,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        //color: fillColor ?? const Color.fromRGBO(81, 99, 224, 1),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(81, 99, 224, 1), // Left color
                            Color.fromRGBO(136, 147, 240, 1), // Right color
                          ],
                        ),

                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          image.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SF Pro Display",
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
