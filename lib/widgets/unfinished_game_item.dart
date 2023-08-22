import 'package:flutter/material.dart';

class UnfinishedGameItem extends StatelessWidget {
  final String? title;
  final List<String>? gameItems;
  final Color? fillColor;

  const UnfinishedGameItem(
      {Key? key, this.title, this.gameItems, this.fillColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 86,
      width: MediaQuery.of(context).size.width / 2 - 40,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(255, 255, 255, 1), // Left color
            Color.fromRGBO(214, 227, 243, 0.46), // Right color
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
          margin: const EdgeInsets.all(1),
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
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.only(left: 5, top: 0),
          child: Stack(
            //alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      title ?? 'Game 1',
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "SF Pro Display",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    //const SizedBox(height: 3), // Adjust spacing as needed
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: gameItems?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 5,
                                ),
                                const SizedBox(
                                    width: 10), // Adjust spacing as needed
                                Text(
                                  gameItems![index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 5,
                  right: 10,
                  child: Container(
                    width: 32,
                    height: 16,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(230, 231, 253, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        '08/10',
                        style: TextStyle(
                          color: Color.fromRGBO(59, 79, 125, 1),
                          fontFamily: "SF Pro Display",
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}
