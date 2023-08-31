import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:puzzle_game/ui/widgets/app/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ориентация в приложении
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}
