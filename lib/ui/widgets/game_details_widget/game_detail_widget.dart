import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:puzzle_game/ui/widgets/game_details_widget/game_detail_widget_model.dart';

import '../game_level_widget/game_level_widget_model.dart';

class DetailWidget extends StatefulWidget {
  final double x;
  final double y;
  final String imageDetail;
  const DetailWidget({
    required super.key,
    required this.x,
    required this.y,
    required this.imageDetail,
  });

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailWidgetModel(),
      child: DetailBodyWidget(
        x: widget.x,
        y: widget.y,
        imageDetail: Image(
          key: widget.key,
          image: AssetImage(widget.imageDetail),
        ),
      ),
    );
  }
}

class DetailBodyWidget extends StatelessWidget {
  const DetailBodyWidget({
    Key? key,
    required this.x,
    required this.y,
    required this.imageDetail,
  }) : super(key: key);

  final double x;
  final double y;
  final Image imageDetail;

  @override
  Widget build(BuildContext context) {
    final modelLavel = context.read<GameLevelWidgetModel>();
    final model = context.watch<DetailWidgetModel>();
    return Align(
      alignment: Alignment(x, y),
      child: IgnorePointer(
        // Игнорирует если истина, убирает эфекты
        ignoring: model.isDetailFinish,
        child: Opacity(
          // Прозрачность
          opacity: model.isDetailFinish ? 0 : 1,
          child: Draggable<Image>(
              data: imageDetail,
              maxSimultaneousDrags: 1,
              feedback: imageDetail, //деталь при перетаскивании,
              childWhenDragging: Opacity(
                  opacity: 0, //цвет прозрачный
                  child:
                      imageDetail), //деталь которая статическая при перетаскивании
              onDragCompleted: () {
                model.setDetailsFinish();
                modelLavel.pushFinish();
              },
              onDragStarted: (() {
                modelLavel.detailKey = imageDetail.key;
                modelLavel.refreshListFinishDetail();
              }),
              feedbackOffset: Offset(x, y),
              child: imageDetail //обычный вид детали
              ),
        ),
      ),
    );
  }
}
