import 'package:flutter/material.dart';

import '../res_widgets/res_image.dart';

class MillAnimationWidget extends StatefulWidget {
  const MillAnimationWidget({super.key});

  @override
  State<MillAnimationWidget> createState() => _MillAnimationWidgetState();
}

class _MillAnimationWidgetState extends State<MillAnimationWidget>
    with TickerProviderStateMixin {
  final durationMill = const Duration(seconds: 15);

  late final AnimationController _controllerMill;

  bool isRepeat = true;

  @override
  void initState() {
    _controllerMill = AnimationController(vsync: this, duration: durationMill)
      ..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: GestureDetector(
        onTap: (() {
          isRepeat = !isRepeat;
          if (isRepeat) {
            _controllerMill.repeat();
          } else {
            _controllerMill.stop();
          }
        }),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: _AnimationMill(
                  controller: _controllerMill,
                  assetImage: MyImage.mill,
                )),
          ],
        ),
      ),
    );
  }
}

class _AnimationMill extends StatelessWidget {
  final String assetImage;
  final AnimationController controller;
  const _AnimationMill({
    required this.controller,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: controller,
      child: Image(
        image: AssetImage(assetImage),
      ),
    );
  }
}
