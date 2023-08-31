import 'package:flutter/material.dart';

import '../res_widgets/res_image.dart';

class SmallCloudAnimationWidget extends StatefulWidget {
  final Offset beging;
  final Offset end;
  final Duration duration;
  const SmallCloudAnimationWidget({
    super.key,
    required this.beging,
    required this.end,
    required this.duration,
  });

  @override
  State<SmallCloudAnimationWidget> createState() =>
      _SmallCloudAnimationWidgetState();
}

class _SmallCloudAnimationWidgetState extends State<SmallCloudAnimationWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controllerSmallCloud;

  bool isRepeat = true;

  @override
  void initState() {
    _controllerSmallCloud =
        AnimationController(vsync: this, duration: widget.duration)..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: _AnimationSmallCloud(
        controller: _controllerSmallCloud,
        assetImage: MyImage.mainMenuSmallCloud,
        beging: widget.beging,
        end: widget.end,
      ),
    );
  }
}

class _AnimationSmallCloud extends StatelessWidget {
  final Offset beging;
  final Offset end;

  final String assetImage;
  final AnimationController controller;
  _AnimationSmallCloud({
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
