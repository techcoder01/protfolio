import 'package:flutter/material.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'highlights.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context) ?
      Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Highlight(counter: AnimatedCounter(
            value: 187,
            text: "+"
            ),
            label: "Subscribers"),
    
          Highlight(counter: AnimatedCounter(
            value: 9,
            text: "+"
            ),
            label: "Videos"),
          ],
        ),
        SizedBox(height: defaultPadding,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Highlight(counter: AnimatedCounter(
            value: 0,
            text: "+"
            ),
            label: "Projects"),

          Highlight(counter: AnimatedCounter(
            value: 10,
            text: "+"
            ),
            label: "Repositories"),
          ],
        )
      ],) :
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
    
          Highlight(counter: AnimatedCounter(
            value: 187,
            text: "+"
            ),
            label: "Subscribers"),
    
          Highlight(counter: AnimatedCounter(
            value: 9,
            text: "+"
            ),
            label: "Videos"),
    
          Highlight(counter: AnimatedCounter(
            value: 0,
            text: "+"
            ),
            label: "Projects"),

          Highlight(counter: AnimatedCounter(
            value: 10,
            text: "+"
            ),
            label: "Repositories"),
            
        ],
      ),
    );
  }
}
