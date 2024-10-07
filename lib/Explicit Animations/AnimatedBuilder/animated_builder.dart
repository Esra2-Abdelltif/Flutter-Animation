import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() =>
      _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        lowerBound: 100,
        upperBound: 300);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Builder"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              //الوديجيت مش هيتعملها Rebuild لل Animations
              animation: animationController,
              builder: (context, child) {
                return Container(
                  color: Colors.deepPurple,
                  height: animationController.value,
                  width: animationController.value,
                );
              },
              //الوديجيت مش هيتعملها Rebuild لل Animations
              child:const Text("Explicit Animations",style: const TextStyle(color: Colors.white),),
            ),
          ),
          ButtonWidget(
            fun: () {
              setState(() {
                animationController.forward();
              });
            },
            text: "Forward",
          ),
          ButtonWidget(
            fun: () {
              setState(() {
                animationController.reverse();
              });
            },
            text: "reverse",
          ),
          ButtonWidget(
            fun: () {
              setState(() {
                animationController.stop();
              });
            },
            text: "Stop",
          ),
          ButtonWidget(
            fun: () {
              setState(() {
                animationController.repeat();
              });
            },
            text: "Repeat",
          ),
          ButtonWidget(
            fun: () {
              setState(() {
                animationController.reset();
              });
            },
            text: "Reset",
          )
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final void Function() fun;
  final String text;

  const ButtonWidget({super.key, required this.fun, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        onPressed: fun,
        color: Colors.deepPurple,
        padding:  const EdgeInsets.all( 15),
        height: 40,
        child: Text(text,style: const TextStyle(color: Colors.white),),
      ),
    );
  }
}
