import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:ui_demo/widgets/submit_button.dart';
import 'package:ui_demo/widgets/text_input_widget.dart';

class FeedBackScreen extends HookWidget {
  const FeedBackScreen({super.key});

  final feedbacks = const [
    "assets/feedbacks/very_bad.png",
    "assets/feedbacks/bad.png",
    "assets/feedbacks/ok.png",
    "assets/feedbacks/good.png",
    "assets/feedbacks/amazing.png",
  ];

  final loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
      'Sed euismod, diam quis aliquam ultricies, nisl nunc aliquet dolor, '
      'quis aliquam nunc nisl quis nunc. Donec euismod, diam quis aliquam '
      'ultricies, nisl nunc aliquet dolor, quis aliquam nunc nisl quis nunc. '
      'Donec euismod, diam quis aliquam ultricies, nisl nunc aliquet dolor, '
      'quis aliquam nunc nisl quis nunc. Donec euismod, diam quis aliquam ';

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: loremIpsum);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/back_arrow.png"),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: const TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(59, 79, 125, 1)),
          title: const Text('Feedback'),
          elevation: 5,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill)),
          child: SafeArea(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Feedback',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(59, 79, 125, 1)),
                          ),
                          Text(
                            'Feel free to share your feedback with us',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(59, 79, 125, 1)),
                          ),
                        ],
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.close))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        feedbacks.length,
                        (index) => AspectRatio(
                              aspectRatio: 1,
                              child: SizedBox(
                                width: 50,
                                child: Image.asset(feedbacks[index]),
                              ),
                            )),
                  ),
                ),
                FlutterSlider(
                  // visibleTouchArea: true,
                  values: const [100],
                  jump: true,
                  disabled: false,

                  tooltip: FlutterSliderTooltip(disabled: true),
                  handler: FlutterSliderHandler(
                    decoration: const BoxDecoration(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.lightBlue.withOpacity(0.3),
                              spreadRadius: 0.05,
                              blurRadius: 5,
                              offset: const Offset(0, 1))
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.3),
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.circle,
                          color: Color(0xFF6C7AE8),
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  trackBar: FlutterSliderTrackBar(
                    inactiveTrackBarHeight: 25,
                    activeTrackBarHeight: 25,
                    inactiveTrackBar: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade50,
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                    activeTrackBar: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2, color: Colors.white),
                        color: const Color(0xFF6C7AE8)),
                  ),
                  max: 500,
                  min: 0,
                ),
                TextInputWidget(
                  hintText: "Please Write Your Feedback",
                  controller: controller,
                  minLines: 3,
                  maxLines: 10,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SubmitButton(
                      title: 'Dissmiss',
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SubmitButton(
                        title: 'Send Feedback',
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
