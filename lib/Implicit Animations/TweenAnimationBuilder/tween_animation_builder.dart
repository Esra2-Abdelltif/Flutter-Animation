import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  Color endColorContainer = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation Builder"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              endColorContainer = Colors.yellow;
            });
          },
          child: TweenAnimationBuilder(

              ///todo to Change height,width automatic
              // tween: Tween(begin: 50.0, end: 300.0),
              ///todo to Change Color automatic
              // tween: ColorTween(begin: Colors.purple, end: Colors.yellow),
              ///todo to Change Color when click on Container must add end same value of begin

              tween: ColorTween(begin: Colors.purple, end: endColorContainer),
              duration: const Duration(seconds: 2),
              builder: (context, value, child) {
                return Container(
                  height: 200,
                  width: 200,
                  color: value,
                );
              }),
        ),
      ),
    );
  }
}
