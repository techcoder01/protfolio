import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.23, child: Container(
      color: Color(0xFF242430),
      child: Column(
        children: [
         const Spacer(flex: 2,),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/myImage.jpg'),
          ),
       const Spacer(),
          Text(
            "Abdul Hannan", 
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.subtitle2,
          ),
          const Text(
            "Flutter Developer & Founder of \n Tech Coder",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              height: 1.5
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    ),);
  }
}