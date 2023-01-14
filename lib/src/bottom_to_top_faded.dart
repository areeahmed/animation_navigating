import 'package:animation_navigating/src/right_to_left_faded.dart';
import 'package:animation_navigating/src/top_to_bottom_faded.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/bottom_to_top_faded_transition.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class PageNine extends StatelessWidget {
  const PageNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Background Color
      backgroundColor: const Color.fromARGB(255, 100, 184, 252),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //* Name of the transition
            const Text(
              'Bottom To Top Faded',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            //* name of the page
            const Text(
              'Page Nine',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
            //* a space between name of transition and name of page
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const PageEight(),
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
              page: const PageTen(),
              pageAnimationType: BottomToTopFadedTransition()));
        },
        child: const Icon(Icons.arrow_upward),
      ),
    );
  }
}
