import 'package:flutter/material.dart';

class AnimationAndTransformWidget extends StatefulWidget {
  const AnimationAndTransformWidget({super.key});

  @override
  State<AnimationAndTransformWidget> createState() =>
      _AnimationAndTransformWidgetState();
}

class _AnimationAndTransformWidgetState
    extends State<AnimationAndTransformWidget> {
  Color endColorContainer = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation & Transform"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              endColorContainer = Colors.yellow;
            });
          },
          child: TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 2 * 3.14),
              duration: const Duration(seconds: 5),
              builder: (context, value, child) {
                //Transform.rotate (angle بقدر اخليه يلف ع حسب)
                //Transform.translate ( offset علي حسب  xو y بقدر احركه ع محور)

                return Transform.rotate(
                  angle: value,
                  child: Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 200,
                    color: endColorContainer,
                    child: const Text(
                      "Transform",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
