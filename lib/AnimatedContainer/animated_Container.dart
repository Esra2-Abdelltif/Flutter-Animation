import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double width = 200;
  double height = 200;
  double borderRadius = 0;
  Color colorContainer = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                height = 300;
                width = 300;
                colorContainer = Colors.deepPurple;
                borderRadius = 80;
              });
            },
            child: Center(
              child: AnimatedContainer(
                decoration: BoxDecoration(
                    color: colorContainer,
                    borderRadius: BorderRadius.circular(borderRadius)),
                duration: const Duration(seconds: 4),
                height: height,
                width: width,
              ),
            ),
          )
        ],
      ),
    );
  }
}
