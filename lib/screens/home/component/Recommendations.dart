import 'package:flutter/material.dart';
import 'package:protfolio/screens/home/component/recomendations_cards.dart';

import '../../../constants.dart';
import '../../../models/Recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendations",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            primary: true,
            child: Row(
              
                children: List.generate(
                    demo_recommendations.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: RecommendationsCard(recommendation: demo_recommendations[index],),
                        ),
                      )
                  ),
          ),
        ],
      ),
    );
  }
}


