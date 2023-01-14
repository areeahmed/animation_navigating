import 'package:animation_navigating/src/top_to_bottom.dart';
import 'package:animation_navigating/src/left_to_right.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 155, 210, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Right To Left',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Page Three',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const PageTwo(),
                    pageAnimationType: FadeAnimationTransition()));
              },
              child: const Text(
                'Go Back',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).push(PageAnimationTransition(
              page: const PageFour(),
              pageAnimationType: RightToLeftTransition()));
        },
        child: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}
