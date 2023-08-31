import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puzzle_game/ui/widgets/game_detail_finish_widget/game_detail_finish_widget_model.dart';

import '../game_level_widget/game_level_widget_model.dart';

class DetailsFinishWidget extends StatelessWidget {
  const DetailsFinishWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailFinishWidgetModel(),
      child: const DetailFinishBodyWidget(),
    );
  }
}

class DetailFinishBodyWidget extends StatelessWidget {
  const DetailFinishBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final modelLevel = context.watch<GameLevelWidgetModel>();

    return Center(
      //фиксированый размер под который подгоняется изображение
      child: SizedBox(
        height: 350, //!!! не трогать!
        width: 350, //!!! не трогать!
        child: Stack(
          children: [
            //деталь в стеке, подгоняется в ручную под макет, для настройки просто убрать прозрачность у finishDetails image
            Align(
                alignment: Alignment.center,
                child:
                    Image.asset(modelLevel.currentLevel.layoutImageBackground)),

            ...modelLevel.listFinishDetail.map(
              (detail) {
                return _DetailFinishWidget(
                  key: detail.key, //Передаём ключ для сравнивания деталей
                  image: detail.imageDetail,
                  opacity: detail.opacity ? 1 : 0,
                  x: detail.x,
                  y: detail.y,
                );
              },
            ).toList(),
          ],
        ),
      ),
    );
  }
}

class _DetailFinishWidget extends StatelessWidget {
  final double x;
  final double y;
  final String image;
  final double opacity;

  const _DetailFinishWidget({
    required super.key,
    required this.opacity,
    required this.image,
    required this.x,
    required this.y,
  });

  @override
  Widget build(BuildContext context) {
    final modelLevel = context.read<GameLevelWidgetModel>();

    return Align(
      alignment: Alignment(x, y),
      child: Opacity(
        opacity: opacity,
        child: DragTarget<Image>(
          builder: ((context, candidateData, rejectedData) {
            return Image.asset(
              image,
            );
          }),
          onAccept: (data) {
            modelLevel.onAccept(key!);
          },
          onWillAccept: (data) {
            return modelLevel.onWillAccept(key!);
          },
        ),
      ),
    );
  }
}
