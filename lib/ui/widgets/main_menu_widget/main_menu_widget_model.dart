import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_game/ui/navigation/main_navigation.dart';

class MainMenuWidgetModel extends ChangeNotifier {
  static final listLevel = <LevelPuzzle>[
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/tractor.png',
      layoutImageBackground: 'assets/images/tractor_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/tractor_1.png',
          locationX: 1,
          locationY: 1,
          locationFinishX: 0.75,
          locationFinishY: -0.13,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_2.png',
          locationX: -1,
          locationY: 1,
          locationFinishX: -0.8,
          locationFinishY: 0.42,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_3.png',
          locationX: 1,
          locationY: -1,
          locationFinishX: -0.65,
          locationFinishY: -0.2,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_4.png',
          locationX: -1,
          locationY: -1,
          locationFinishX: 0.8,
          locationFinishY: 0.25,
        ),
      ],
    ),
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/tractor.png',
      layoutImageBackground: 'assets/images/tractor_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/tractor_1.png',
          locationX: 1,
          locationY: 1,
          locationFinishX: 0.75,
          locationFinishY: -0.13,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_2.png',
          locationX: -1,
          locationY: 1,
          locationFinishX: -0.8,
          locationFinishY: 0.42,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_3.png',
          locationX: 1,
          locationY: -1,
          locationFinishX: -0.65,
          locationFinishY: -0.2,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_4.png',
          locationX: -1,
          locationY: -1,
          locationFinishX: 0.8,
          locationFinishY: 0.25,
        ),
      ],
    ),
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/level001/layout_image.png',
      layoutImageBackground: 'assets/images/level001/layout_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/level001/detail_image01.png',
          locationX: 0.9,
          locationY: 0.9,
          locationFinishX: -0.17,
          locationFinishY: -0.623,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image02.png',
          locationX: 0.9,
          locationY: -0.9,
          locationFinishX: -0.40,
          locationFinishY: 0.11,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image03.png',
          locationX: 0.6,
          locationY: 0.0,
          locationFinishX: -0.35,
          locationFinishY: 0.985,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image04.png',
          locationX: -0.9,
          locationY: 0.9,
          locationFinishX: 0.360,
          locationFinishY: 0.695,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image05.png',
          locationX: -0.53,
          locationY: -0.4,
          locationFinishX: 0.477,
          locationFinishY: 0.033,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image06.png',
          locationX: -0.5,
          locationY: 0.6,
          locationFinishX: -0.241,
          locationFinishY: -0.986,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image07.png',
          locationX: -0.9,
          locationY: -0.8,
          locationFinishX: 0.390,
          locationFinishY: -0.997,
        ),
      ],
    ),
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/tractor.png',
      layoutImageBackground: 'assets/images/tractor_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/tractor_1.png',
          locationX: 1,
          locationY: 1,
          locationFinishX: 0.75,
          locationFinishY: -0.13,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_2.png',
          locationX: -1,
          locationY: 1,
          locationFinishX: -0.8,
          locationFinishY: 0.42,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_3.png',
          locationX: 1,
          locationY: -1,
          locationFinishX: -0.65,
          locationFinishY: -0.2,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_4.png',
          locationX: -1,
          locationY: -1,
          locationFinishX: 0.8,
          locationFinishY: 0.25,
        ),
      ],
    ),
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/level001/layout_image.png',
      layoutImageBackground: 'assets/images/level001/layout_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/level001/detail_image01.png',
          locationX: 0.9,
          locationY: 0.9,
          locationFinishX: -0.17,
          locationFinishY: -0.623,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image02.png',
          locationX: 0.9,
          locationY: -0.9,
          locationFinishX: -0.40,
          locationFinishY: 0.11,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image03.png',
          locationX: 0.6,
          locationY: 0.0,
          locationFinishX: -0.35,
          locationFinishY: 0.985,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image04.png',
          locationX: -0.9,
          locationY: 0.9,
          locationFinishX: 0.360,
          locationFinishY: 0.695,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image05.png',
          locationX: -0.53,
          locationY: -0.4,
          locationFinishX: 0.477,
          locationFinishY: 0.033,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image06.png',
          locationX: -0.5,
          locationY: 0.6,
          locationFinishX: -0.241,
          locationFinishY: -0.986,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image07.png',
          locationX: -0.9,
          locationY: -0.8,
          locationFinishX: 0.390,
          locationFinishY: -0.997,
        ),
      ],
    ),
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/tractor.png',
      layoutImageBackground: 'assets/images/tractor_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/tractor_1.png',
          locationX: 1,
          locationY: 1,
          locationFinishX: 0.75,
          locationFinishY: -0.13,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_2.png',
          locationX: -1,
          locationY: 1,
          locationFinishX: -0.8,
          locationFinishY: 0.42,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_3.png',
          locationX: 1,
          locationY: -1,
          locationFinishX: -0.65,
          locationFinishY: -0.2,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_4.png',
          locationX: -1,
          locationY: -1,
          locationFinishX: 0.8,
          locationFinishY: 0.25,
        ),
      ],
    ),
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/tractor.png',
      layoutImageBackground: 'assets/images/tractor_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/tractor_1.png',
          locationX: 1,
          locationY: 1,
          locationFinishX: 0.75,
          locationFinishY: -0.13,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_2.png',
          locationX: -1,
          locationY: 1,
          locationFinishX: -0.8,
          locationFinishY: 0.42,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_3.png',
          locationX: 1,
          locationY: -1,
          locationFinishX: -0.65,
          locationFinishY: -0.2,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_4.png',
          locationX: -1,
          locationY: -1,
          locationFinishX: 0.8,
          locationFinishY: 0.25,
        ),
      ],
    ),
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/tractor.png',
      layoutImageBackground: 'assets/images/tractor_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/tractor_1.png',
          locationX: 1,
          locationY: 1,
          locationFinishX: 0.75,
          locationFinishY: -0.13,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_2.png',
          locationX: -1,
          locationY: 1,
          locationFinishX: -0.8,
          locationFinishY: 0.42,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_3.png',
          locationX: 1,
          locationY: -1,
          locationFinishX: -0.65,
          locationFinishY: -0.2,
        ),
        Detail(
          imageDetail: 'assets/images/tractor_4.png',
          locationX: -1,
          locationY: -1,
          locationFinishX: 0.8,
          locationFinishY: 0.25,
        ),
      ],
    ),
    LevelPuzzle(
      imageBackground: 'assets/images/level001/layout_image_background.png',
      layoutImage: 'assets/images/level001/layout_image.png',
      layoutImageBackground: 'assets/images/level001/layout_silhouette.png',
      detailsList: [
        Detail(
          imageDetail: 'assets/images/level001/detail_image01.png',
          locationX: 0.9,
          locationY: 0.9,
          locationFinishX: -0.17,
          locationFinishY: -0.623,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image02.png',
          locationX: 0.9,
          locationY: -0.9,
          locationFinishX: -0.40,
          locationFinishY: 0.11,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image03.png',
          locationX: 0.6,
          locationY: 0.0,
          locationFinishX: -0.35,
          locationFinishY: 0.985,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image04.png',
          locationX: -0.9,
          locationY: 0.9,
          locationFinishX: 0.360,
          locationFinishY: 0.695,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image05.png',
          locationX: -0.53,
          locationY: -0.4,
          locationFinishX: 0.477,
          locationFinishY: 0.033,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image06.png',
          locationX: -0.5,
          locationY: 0.6,
          locationFinishX: -0.241,
          locationFinishY: -0.986,
        ),
        Detail(
          imageDetail: 'assets/images/level001/detail_image07.png',
          locationX: -0.9,
          locationY: -0.8,
          locationFinishX: 0.390,
          locationFinishY: -0.997,
        ),
      ],
    ),
  ];

  void pushLevel(int indexLevel, {required BuildContext context}) {
    AudioPlayer().play(AssetSource('sounds/button_pressed.mp3'));
    Navigator.of(context).pushNamed(MainNavigationRouteNames.menuGameWidget,
        arguments: indexLevel);
  }
}

class LevelPuzzle {
  final String layoutImage;
  final String layoutImageBackground;
  final String imageBackground;
  final List<Detail> detailsList;

  const LevelPuzzle({
    required this.layoutImage,
    required this.layoutImageBackground,
    required this.imageBackground,
    required this.detailsList,
  });
}

class Detail {
  final String imageDetail;
  final key = UniqueKey();
  final double locationX;
  final double locationY;
  final double locationFinishX;
  final double locationFinishY;

  Detail({
    required this.imageDetail,
    required this.locationX,
    required this.locationY,
    required this.locationFinishX,
    required this.locationFinishY,
  });
}
