import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  double _lowerValue = 50;
  double _upperValue = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              // width: 100,
              // height: 50,
              padding: const EdgeInsets.all(50),
              child: FlutterSlider(
                values: const [0],
                max: 100,
                min: 0,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 50, right: 50),
              alignment: Alignment.centerLeft,
              child: FlutterSlider(
                values: const [60, 160],
//              ignoreSteps: [
//                FlutterSliderIgnoreSteps(from: 120, to: 150),
//                FlutterSliderIgnoreSteps(from: 160, to: 190),
//              ],
                max: 200,
                min: 50,
                maximumDistance: 300,
                rangeSlider: true,
                rtl: true,
                handlerAnimation: const FlutterSliderHandlerAnimation(
                    curve: Curves.elasticOut,
                    reverseCurve: null,
                    duration: Duration(milliseconds: 700),
                    scale: 1.4),
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  setState(() {
                    _lowerValue = lowerValue;
                    _upperValue = upperValue;
                  });
                },
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                alignment: Alignment.centerLeft,
                child: FlutterSlider(
                  values: const [1000, 15000],
                  rangeSlider: true,
//rtl: true,
                  ignoreSteps: [
                    FlutterSliderIgnoreSteps(from: 8000, to: 12000),
                    FlutterSliderIgnoreSteps(from: 18000, to: 22000),
                  ],
                  max: 25000,
                  min: 0,
                  step: const FlutterSliderStep(step: 100),

                  jump: true,

                  trackBar: const FlutterSliderTrackBar(
                    activeTrackBarHeight: 5,
                  ),
                  tooltip: FlutterSliderTooltip(
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.lightBlue),
                  ),
                  handler: FlutterSliderHandler(
                    decoration: const BoxDecoration(),
                    child: Material(
                      type: MaterialType.canvas,
                      color: Colors.orange,
                      elevation: 10,
                      child: Container(
                          padding: const EdgeInsets.all(5),
                          child: const Icon(
                            Icons.adjust,
                            size: 25,
                          )),
                    ),
                  ),
                  rightHandler: FlutterSliderHandler(
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.red,
                      size: 24,
                    ),
                  ),
                  disabled: false,

                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    _lowerValue = lowerValue;
                    _upperValue = upperValue;
                    setState(() {});
                  },
                )),
            Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                alignment: Alignment.centerLeft,
                child: FlutterSlider(
                  values: const [3000, 17000],
                  rangeSlider: true,
//rtl: true,

//                ignoreSteps: [
//                  FlutterSliderIgnoreSteps(from: 8000, to: 12000),
//                  FlutterSliderIgnoreSteps(from: 18000, to: 22000),
//                ],
                  max: 25000,
                  min: 0,
                  step: const FlutterSliderStep(step: 100),
                  jump: true,
                  trackBar: const FlutterSliderTrackBar(
                    inactiveTrackBarHeight: 2,
                    activeTrackBarHeight: 3,
                  ),

                  disabled: false,

                  handler: customHandler(Icons.chevron_right),
                  rightHandler: customHandler(Icons.chevron_left),
                  tooltip: FlutterSliderTooltip(
                    leftPrefix: const Icon(
                      Icons.attach_money,
                      size: 19,
                      color: Colors.black45,
                    ),
                    rightSuffix: const Icon(
                      Icons.attach_money,
                      size: 19,
                      color: Colors.black45,
                    ),
                    textStyle:
                        const TextStyle(fontSize: 17, color: Colors.black45),
                  ),

                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    _lowerValue = lowerValue;
                    _upperValue = upperValue;
                    setState(() {});
                  },
                )),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              alignment: Alignment.centerLeft,
              child: FlutterSlider(
                key: const Key('3343'),
                values: const [300000000, 1600000000],
                rangeSlider: true,
                tooltip: FlutterSliderTooltip(
                  alwaysShowTooltip: true,
                ),
                max: 2000000000,
                min: 0,
                step: const FlutterSliderStep(step: 20),
                jump: true,
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  _lowerValue = lowerValue;
                  _upperValue = upperValue;
                  setState(() {});
                },
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 50, left: 50, right: 50),
            //   alignment: Alignment.centerLeft,
            //   child: FlutterSlider(
            //     values: [30, 60],
            //     rangeSlider: true,
            //     max: 100,
            //     min: 0,
            //     visibleTouchArea: true,
            //     trackBar: FlutterSliderTrackBar(
            //       inactiveTrackBarHeight: 14,
            //       activeTrackBarHeight: 10,
            //       inactiveTrackBar: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20),
            //         color: Colors.black12,
            //         border: Border.all(width: 3, color: Colors.blue),
            //       ),
            //       activeTrackBar: BoxDecoration(
            //           borderRadius: BorderRadius.circular(4),
            //           color: Colors.blue.withOpacity(0.5)),
            //     ),
            //     onDragging: (handlerIndex, lowerValue, upperValue) {
            //       _lowerValue = lowerValue;
            //       _upperValue = upperValue;
            //       setState(() {});
            //     },
            //   ),
            // ),

            /*Fixed Values*/
            Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: FlutterSlider(
                jump: true,
                values: const [10],
                fixedValues: [
                  FlutterSliderFixedValue(percent: 0, value: "1000"),
                  FlutterSliderFixedValue(percent: 10, value: "10K"),
                  FlutterSliderFixedValue(percent: 50, value: 50000),
                  FlutterSliderFixedValue(percent: 80, value: "80M"),
                  FlutterSliderFixedValue(percent: 100, value: "100B"),
                ],
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  if (lowerValue is String) {
                    _lowerValue = double.parse(lowerValue);
                  } else {
                    _lowerValue = lowerValue;
                  }
                  setState(() {});
                },
              ),
            ),

            /*Hatch Mark Example*/
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: FlutterSlider(
                handlerWidth: 15,
                hatchMark: FlutterSliderHatchMark(
                  linesDistanceFromTrackBar: 5,
                  density: 0.5,
                  labels: [
                    FlutterSliderHatchMarkLabel(
                        percent: 0, label: const Text('Start')),
                    FlutterSliderHatchMarkLabel(
                        percent: 10, label: const Text('10,000')),
                    FlutterSliderHatchMarkLabel(
                        percent: 50, label: const Text('50 %')),
                    FlutterSliderHatchMarkLabel(
                        percent: 80, label: const Text('80,000')),
                    FlutterSliderHatchMarkLabel(
                        percent: 100, label: const Text('Finish')),
                  ],
                ),
                jump: true,
                trackBar: const FlutterSliderTrackBar(),
                handler: FlutterSliderHandler(
                  decoration: const BoxDecoration(),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                rightHandler: FlutterSliderHandler(
                  decoration: const BoxDecoration(),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                values: const [30000, 70000],
                visibleTouchArea: true,
                min: 0,
                max: 100000,
                touchSize: 15,
                rangeSlider: true,
                step: const FlutterSliderStep(step: 1000),
                onDragging: (handlerIndex, lowerValue, upperValue) {},
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text('Lower Value: $_lowerValue'),
            const SizedBox(height: 25),
            Text('Upper Value: $_upperValue')
          ],
        ),
      ),
    );
  }

  customHandler(IconData icon) {
    return FlutterSliderHandler(
      decoration: const BoxDecoration(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 0.05,
                blurRadius: 5,
                offset: const Offset(0, 1))
          ],
        ),
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3), shape: BoxShape.circle),
          child: Icon(
            icon,
            color: Colors.white,
            size: 23,
          ),
        ),
      ),
    );
  }
}
