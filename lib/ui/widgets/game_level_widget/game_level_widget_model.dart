import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:puzzle_game/ui/widgets/main_menu_widget/main_menu_widget_model.dart';

class GameLevelWidgetModel extends ChangeNotifier {
  final int index;
  late final LevelPuzzle currentLevel; // Текущий уровень
  Key? detailKey; //устанавливается при перетаскивании детали
  final listFinishDetail = <FinishDetail>[];

  int _countFinish = 0;

  GameLevelWidgetModel(this.index) {
    currentLevel = MainMenuWidgetModel.listLevel[index];
    listFinishDetail.addAll(
      currentLevel.detailsList
          .map(
            (detail) => FinishDetail(
              key: detail.key,
              imageDetail: detail.imageDetail,
              opacity: false,
              x: detail.locationFinishX,
              y: detail.locationFinishY,
            ),
          )
          .toList(),
    );
  }

  void refreshListFinishDetail() {
    final indexDetail = listFinishDetail
        .indexWhere((finishDetail) => finishDetail.key == detailKey);

    final temp = listFinishDetail.last;
    listFinishDetail.last = listFinishDetail[indexDetail];
    listFinishDetail[indexDetail] = temp;

    notifyListeners();
  }

  void onAccept(Key key) {
    if (key == detailKey) {
      final indexDetail = listFinishDetail
          .indexWhere((finishDetail) => finishDetail.key == detailKey);
      listFinishDetail[indexDetail].opacity = true;

      notifyListeners();
    }
  }

  bool onWillAccept(Key key) {
    if (key == detailKey) {
      return true;
    }
    return false;
  }

  void pushMainMenu(BuildContext context) {
    Navigator.of(context).pop();
  }

  void pushFinish() {
    _countFinish++;
    if (_countFinish == currentLevel.detailsList.length) {
      AudioPlayer().play(AssetSource('sounds/win.mp3'));
    }
  }
}

class FinishDetail {
  final Key key;
  final String imageDetail;
  bool opacity;
  final double x;
  final double y;

  FinishDetail(
      {required this.key,
      required this.imageDetail,
      required this.opacity,
      required this.x,
      required this.y});
}
