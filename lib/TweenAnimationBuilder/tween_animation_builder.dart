import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({super.key});

  @override
  State<TweenAnimationBuilderWidget> createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState extends State<TweenAnimationBuilderWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation Builder"),
      ),
      body: Center(
        child: TweenAnimationBuilder(
            tween: Tween(begin: 50.0, end: 300.0),
            duration: const Duration(seconds: 5),
            builder: (context,value,child){
              return  Container(
                height: value,
                width: value,
                color: Colors.deepPurple,
              );
            }),
      ),
    );
  }
}
