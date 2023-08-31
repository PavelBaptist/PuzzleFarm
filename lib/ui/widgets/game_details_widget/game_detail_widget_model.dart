import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class DetailWidgetModel extends ChangeNotifier {
  bool isDetailFinish = false;

  void setDetailsFinish() {
    AudioPlayer().play(AssetSource('sounds/button_unpressed.mp3'));
    isDetailFinish = true;
    notifyListeners();
  }
}
