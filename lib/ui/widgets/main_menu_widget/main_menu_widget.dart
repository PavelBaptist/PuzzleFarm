import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../animations/big_cloud_animation_widgetю.dart';
import '../animations/mill_animation_widget.dart';
import '../animations/small_cloud_animation_widgetю.dart';
import '../animations/tractor_animation_widget.dart';
import '../res_widgets/buttons.dart';
import '../res_widgets/res_image.dart';
import 'main_menu_widget_model.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => MainMenuWidgetModel(),
          child: const _MainMenuBodyWidget(),
        ),
      );
}

class _MainMenuBodyWidget extends StatelessWidget {
  const _MainMenuBodyWidget();

  @override
  Widget build(BuildContext context) {
    return const MainMenuBackgroundWidget();
  }
}

class MainMenuBackgroundWidget extends StatelessWidget {
  const MainMenuBackgroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          height: 650, //!!
          width: 1000, //!!
          child: Stack(
            children: const [
              Align(
                alignment: Alignment(0, -1),
                child: Image(
                  image: AssetImage(MyImage.mainMenuSky),
                ),
              ),
              SmallCloudAnimationWidget(
                beging: Offset(-1.1, -0.4),
                end: Offset(1, -0.4),
                duration: Duration(minutes: 1),
              ),
              SmallCloudAnimationWidget(
                beging: Offset(-1.6, -0.0),
                end: Offset(1, -0.3),
                duration: Duration(seconds: 90),
              ),
              BigCloudAnimationWidget(
                beging: Offset(-1, -0.2),
                end: Offset(1, -0.2),
                duration: Duration(minutes: 1),
              ),
              Align(
                alignment: Alignment(0, -0.6),
                child: Image(
                  image: AssetImage(MyImage.mainMenuField),
                ),
              ),
              Align(
                  alignment: Alignment(-0.76, -0.64),
                  child: MillAnimationWidget()),
              TractorAnimationWidget(),
              Align(
                alignment: Alignment(0, 1),
                child: Image(
                  image: AssetImage(MyImage.mainMenuFrontLandscape),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Center(child: MenuListViewWidget())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuListViewWidget extends StatelessWidget {
  const MenuListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: MainMenuWidgetModel.listLevel.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ButtonMainMenuWidget(
              function: () => context
                  .read<MainMenuWidgetModel>()
                  .pushLevel(index, context: context),
              child:
                  Image.asset(MainMenuWidgetModel.listLevel[index].layoutImage),
            ),
          ),
        );
      },
    );
  }
}
