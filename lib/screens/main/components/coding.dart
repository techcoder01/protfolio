import 'package:flutter/material.dart';

import '../../../components/animated_circular_prgress.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.7, label: "Dart"),
        AnimatedLinearProgressIndicator(percentage: 0.6, label: "JavaScript"),
        AnimatedLinearProgressIndicator(percentage: 0.4, label: "Python"),
        AnimatedLinearProgressIndicator(percentage: 0.8, label: "Html"),
        AnimatedLinearProgressIndicator(percentage: 0.5, label: "CSS"),
      ],
    );
  }
}


