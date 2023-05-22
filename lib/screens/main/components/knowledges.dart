import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:protfolio/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        "Knowledges",
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ),
    knowledgeTest(text: "Flutter/Dart"),
    knowledgeTest(text: "Git/GitHub"),
    knowledgeTest(text: "Blogger"),
    knowledgeTest(text: "Wordpress"),
      ],
    );
  }
}

class knowledgeTest extends StatelessWidget {
  const knowledgeTest({
    super.key,
    required this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text),
        ],
      ),
    );
  }
}
