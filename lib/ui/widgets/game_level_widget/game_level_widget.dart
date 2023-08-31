import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puzzle_game/ui/widgets/game_level_widget/game_level_widget_model.dart';

import '../game_detail_finish_widget/game_detail_finish_widget.dart';
import '../game_details_widget/game_detail_widget.dart';

class GameLevelWidget extends StatelessWidget {
  final int index;
  const GameLevelWidget({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GameLevelWidgetModel(index),
      child: const Scaffold(
        body: GameLevelBodyWidget(),
      ),
    );
  }
}

class GameLevelBodyWidget extends StatelessWidget {
  const GameLevelBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLevel = context
        .read<GameLevelWidgetModel>()
        .currentLevel; // Получение текущего уровня

// Заполнение данных деталей модели через map
    return Stack(
      children: [
        const BackgroundImageWidget(),
        ...currentLevel.detailsList.map(
          (detail) {
            return DetailWidget(
              key: detail.key, // Передаём ключ для сравнивания деталей
              x: detail.locationX, // Расположение детали x
              y: detail.locationY, // Расположение детали y
              imageDetail: detail.imageDetail, // Изображение детали
            );
          },
        ).toList(),
        const DetailsFinishWidget(),
        Positioned(
          top: 15,
          left: 15,
          child: IconButton(
            iconSize: 50,
            color: Colors.grey.shade900,
            onPressed: () =>
                context.read<GameLevelWidgetModel>().pushMainMenu(context),
            icon: const Icon(Icons.home),
          ),
        ),
      ],
    );
  }
}

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLevel = context.read<GameLevelWidgetModel>().currentLevel;
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(
          currentLevel!.imageBackground,
        ),
      ),
    );
  }
}
