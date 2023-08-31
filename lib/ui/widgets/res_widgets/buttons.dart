import 'package:flutter/material.dart';

class ButtonMainMenuWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback? function;

  const ButtonMainMenuWidget({super.key, required this.child, this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        maximumSize: MaterialStateProperty.all(const Size(150, 150)),
        minimumSize: MaterialStateProperty.all(const Size(150, 150)),
        backgroundColor: MaterialStateProperty.all(Colors.orange.shade500),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),),
      ),
      child: child,
    );
  }
}
