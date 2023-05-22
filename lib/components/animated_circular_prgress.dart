// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.percentage,
    required this.label,
  });

final double percentage;
final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0 , end:percentage),
           duration: defaultDuration,
           builder:(context, double value, child) => 
           Stack(
            fit: StackFit.expand,
             children: [
               CircularProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
          ),
          Center(
            child: Text("${(value * 100).toInt()}%",
            style: Theme.of(context).textTheme.subtitle1,)
          )
             ],
           ),
          ),
        ),
       const SizedBox(height: defaultPadding/2,),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.percentage,
    required this.label,
  });

  final double percentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text('${(value * 100).toInt()}%')
              ],
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}