import 'package:flutter/material.dart';
import 'screens/introduction_carousel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: IntroductionCarousel.routeName,
      routes: {
        IntroductionCarousel.routeName: (ctx) => IntroductionCarousel(),
      },
    );
  }
}
