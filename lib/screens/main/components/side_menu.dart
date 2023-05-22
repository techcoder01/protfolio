// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:protfolio/constants.dart';
import 'package:protfolio/screens/main/components/skills.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfoText(
                    title: "Residence",
                    text: "Pakistan",
                  ),
                  AreaInfoText(
                    title: "City",
                    text: "Karachi",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: "18",
                  ),
                  Skills(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Coding(),
                  Knowledges(),
                  Divider(),
                  SizedBox(width: defaultPadding/2,),
                  FittedBox(
                    child: TextButton(onPressed: (){}, child: Row(
                      children: [
                        Text(
                          "Download CV",
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1!.color
                            )
                        ),
                        SizedBox(width: defaultPadding/2),
                        SvgPicture.asset("assets/icons/download.svg"),
                      ],
                    )
                   ),
                  ),
                  Container(
                    color: Color(0xFF24242E),
                    margin: EdgeInsets.only(top: defaultPadding),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/linkedin.svg')),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/twitter.svg')),
                        IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/github.svg')),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

