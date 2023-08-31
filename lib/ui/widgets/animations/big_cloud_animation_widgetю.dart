import 'package:flutter/material.dart';

import '../res_widgets/res_image.dart';

class BigCloudAnimationWidget extends StatefulWidget {
  final Offset beging;
  final Offset end;
  final Duration duration;
  const BigCloudAnimationWidget({
    super.key,
    required this.beging,
    required this.end,
    required this.duration,
  });

  @override
  State<BigCloudAnimationWidget> createState() =>
      _BigCloudAnimationWidgetState();
}

class _BigCloudAnimationWidgetState extends State<BigCloudAnimationWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controllerBigCloud;

  bool isRepeat = true;

  @override
  void initState() {
    _controllerBigCloud =
        AnimationController(vsync: this, duration: widget.duration)..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: _AnimationBigCloud(
        controller: _controllerBigCloud,
        assetImage: MyImage.mainMenuBigCloud,
        beging: widget.beging,
        end: widget.end,
      ),
    );
  }
}

class _AnimationBigCloud extends StatelessWidget {
  final Offset beging;
  final Offset end;

  final String assetImage;
  final AnimationController controller;
  _AnimationBigCloud({
    required this.controller,
    required this.assetImage,
    required this.beging,
    required this.end,
  }) : position = Tween<Offset>(
          begin: beging,
          end: end,
        ).animate(controller);

  Animation<Offset> position;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: position,
      child: Image(
        image: AssetImage(assetImage),
      ),
    );
  }
}
