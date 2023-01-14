import 'package:animation_navigating/src/right_to_left.dart';
import 'package:animation_navigating/src/fade.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/animations/left_to_right_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 77, 139),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Left To Right',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Page Four',
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
                    page: const PageThree(),
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
              page: const PageFive(),
              pageAnimationType: LeftToRightTransition()));
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
