import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import '../../../responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key, required this.project,
  });
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
  aspectRatio: 1.9, // Replace with your desired aspect ratio
  child: ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child: Image.asset(
      project.imageUrl!,
      fit: BoxFit.cover,
    ),
  ),
),
          Spacer(),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(project.description!,maxLines: Responsive.isMobileLarge(context)? 3 : 4, overflow: TextOverflow.ellipsis, style: TextStyle(height: 1.5)),
           Spacer(),
           TextButton(onPressed: (){}, child: Text('Read More>>', style: TextStyle(color: primaryColor),))
        ],
      ),
    );
  }
}