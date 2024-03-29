import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AnimProps>()
      ..add(AnimProps.opacity, 0.0.tweenTo(1.0), const Duration(milliseconds: 500))
      ..add(AnimProps.translateY, (-30.0).tweenTo(0.0), const Duration(milliseconds: 500), Curves.easeOut);

    return PlayAnimation<MultiTweenValues<AnimProps>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, child, animation) => Opacity(
        opacity: animation.get(AnimProps.opacity),
        child: Transform.translate(
          offset: Offset(0, animation.get(AnimProps.translateY)),
          child: child,
        ),
      ),
    );
  }
}

enum AnimProps { opacity, translateY }
