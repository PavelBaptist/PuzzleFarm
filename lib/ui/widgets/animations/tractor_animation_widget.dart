import 'package:flutter/material.dart';

import '../res_widgets/res_image.dart';

class TractorAnimationWidget extends StatefulWidget {
  const TractorAnimationWidget({super.key});

  @override
  State<TractorAnimationWidget> createState() => _TractorAnimationWidgetState();
}

class _TractorAnimationWidgetState extends State<TractorAnimationWidget>
    with TickerProviderStateMixin {
  final _durationWeel = const Duration(seconds: 5);
  final _durationTractorBody = const Duration(milliseconds: 180);
  final _durationRoad = const Duration(seconds: 40); //40
  late final AnimationController _controllerWheel;
  late final AnimationController _controllerTractorBody;
  late final AnimationController _controllerRoad;

  bool isRepeat = true;
  @override
  void initState() {
    _controllerWheel = AnimationController(vsync: this, duration: _durationWeel)
      ..repeat();
    _controllerTractorBody =
        AnimationController(vsync: this, duration: _durationTractorBody)
          ..repeat(reverse: true);
    _controllerRoad = AnimationController(vsync: this, duration: _durationRoad)
      ..repeat();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _AnimationRoadTractor(
      controllerRoad: _controllerRoad,
      controllerTractorBody: _controllerTractorBody,
      controllerWheel: _controllerWheel,
    );
  }
}

// isRepeat = !isRepeat;
//         if (isRepeat) {
//           _controllerWheel.repeat();
//           _controllerTractorBody.repeat(reverse: true);
//         } else {
//           _controllerWheel.stop();
//           _controllerTractorBody.stop();
//         }

class _AnimationRoadTractor extends StatelessWidget {
  final AnimationController controllerTractorBody;
  final AnimationController controllerWheel;
  final AnimationController controllerRoad;
  _AnimationRoadTractor({
    super.key,
    required this.controllerTractorBody,
    required this.controllerWheel,
    required this.controllerRoad,
  })  : positionRoad = Tween<Offset>(
                begin: const Offset(7, 1.6), end: const Offset(-1, 1.6))
            .animate(controllerRoad),
        positionUp = Tween<Offset>(
                begin: const Offset(0, 1.6), end: const Offset(0, -0.6))
            .animate(
          CurvedAnimation(
            parent: controllerRoad,
            curve: const Interval(0.019, 0.45, curve: Curves.ease),
          ),
        ),
        positionDown =
            Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0, 0.7))
                .animate(
          CurvedAnimation(
            parent: controllerRoad,
            curve: const Interval(0.59, 0.97, curve: Curves.ease),
          ),
        ),
        rotationStart = Tween<double>(begin: 0.13, end: 0).animate(
          CurvedAnimation(
            parent: controllerRoad,
            curve: const Interval(0.0, 0.7, curve: Curves.ease),
          ),
        ),
        rotationEnd = Tween<double>(begin: 1, end: 0.95).animate(
          CurvedAnimation(
            parent: controllerRoad,
            curve: Interval(0.4, 0.7, curve: Curves.ease.flipped),
          ),
        );
  final Animation<Offset> positionRoad;
  final Animation<Offset> positionUp;
  final Animation<Offset> positionDown;
  final Animation<double> rotationStart;
  final Animation<double> rotationEnd;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: positionRoad,
      child: SlideTransition(
        position: positionUp,
        child: SlideTransition(
          position: positionDown,
          child: RotationTransition(
            turns: rotationStart,
            child: RotationTransition(
              turns: rotationEnd,
              child: SizedBox(
                height: 150,
                width: 150,
                child: Stack(
                  children: [
                    Align(
                      alignment: const Alignment(0, -0.3),
                      child: _AnimationTractorBody(
                        controller: controllerTractorBody,
                        assetImage: MyImage.tractorBody,
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.55, 1),
                      child: _AnimationWheel(
                        controller: controllerWheel,
                        assetImage: MyImage.bigWheel,
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.75, 0.95),
                      child: _AnimationWheel(
                        controller: controllerWheel,
                        assetImage: MyImage.smallWheel,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AnimationWheel extends StatelessWidget {
  final String assetImage;
  final AnimationController controller;
  _AnimationWheel({required this.controller, required this.assetImage})
      : rotation = Tween<double>(begin: 1.0, end: 0.0).animate(controller);

  final Animation<double> rotation;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: rotation,
      child: Image(
        image: AssetImage(assetImage),
      ),
    );
  }
}

class _AnimationTractorBody extends StatelessWidget {
  final String assetImage;
  final AnimationController controller;
  _AnimationTractorBody({required this.controller, required this.assetImage})
      : rotation = Tween<double>(begin: -0.001, end: 0.001).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 1.0, curve: Curves.ease),
          ),
        );

  final Animation<double> rotation;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: rotation,
      child: Image(
        image: AssetImage(assetImage),
      ),
    );
  }
}
