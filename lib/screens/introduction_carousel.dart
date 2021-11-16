// ignore_for_file: non_constant_identifier_names

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_assignment/screens/data.dart';

List<SliderModel> slides = <SliderModel>[];
int currentIndex = 0;
PageController pageController = PageController(initialPage: 0);

Widget pageIndexIndicator(bool isCurrentPage) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4.0),
    height: isCurrentPage ? 10.0 : 6.0,
    width: isCurrentPage ? 10.0 : 6.0,
    decoration: BoxDecoration(
      color: isCurrentPage ? Colors.white : Colors.white24,
      borderRadius: BorderRadius.circular(12.0),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class IntroductionCarousel extends StatefulWidget {
  static const String routeName = '/indroductionCarousel';
  @override
  _IntroductionCarouselState createState() => _IntroductionCarouselState();
}

class _IntroductionCarouselState extends State<IntroductionCarousel> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7461DE),
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemCount: slides.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SliderTile(
                ImageAssetPath: slides[index].getImageAssetPath(),
                Desc: slides[index].getDesc(),
              ),
              const SizedBox(height: 50.0),
              currentIndex != slides.length - 1
                  ? MaterialButton(
                      onPressed: () {
                        pageController.animateToPage(currentIndex + 1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.linear);
                      },
                      color: const Color(0xFF7363DF),
                      // minWidth: MediaQuery.of(context).size.width * .65,
                      height: MediaQuery.of(context).size.height / 16,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    )
                  : MaterialButton(
                      color: const Color(0xFF7363DF),
                      minWidth: MediaQuery.of(context).size.width * .65,
                      height: MediaQuery.of(context).size.height / 15,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0)),
                      onPressed: () {},
                      child: const Text(
                        'Get started',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
              const SizedBox(height: 15.0),
              currentIndex != slides.length - 1
                  ? GestureDetector(
                      onTap: () {
                        pageController.animateToPage(slides.length - 1,
                            duration: const Duration(microseconds: 400),
                            curve: Curves.linear);
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Text(''),
            ],
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class SliderTile extends StatelessWidget {
  String ImageAssetPath, Desc;
  SliderTile({required this.ImageAssetPath, required this.Desc});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 500.0,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/triangle_dots.png',
                  color: Colors.white24,
                ),
                Positioned(
                  left: 20.0,
                  right: 20.0,
                  top: 100.0,
                  child: Image.asset(ImageAssetPath),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              Desc,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < slides.length; i++)
                currentIndex == i
                    ? pageIndexIndicator(true)
                    : pageIndexIndicator(false),
            ],
          ),
        ],
      ),
    );
  }
}
