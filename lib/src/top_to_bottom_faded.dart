import 'package:animation_navigating/src/rotation.dart';
import 'package:animation_navigating/src/bottom_to_top_faded.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/animations/top_to_bottom_faded.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class PageEight extends StatelessWidget {
  const PageEight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 140, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Top to Bottom Faded',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Page Eight',
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
                    page: const PageSeven(),
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
              page: const PageNine(),
              pageAnimationType: TopToBottomFadedTransition()));
        },
        child: const Icon(Icons.arrow_downward),
      ),
    );
  }
}
