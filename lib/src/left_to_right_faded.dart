import 'package:animation_navigating/src/End_of_tansition.dart';
import 'package:animation_navigating/src/top_to_bottom_faded.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/bottom_to_top_faded_transition.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class PageEleven extends StatelessWidget {
  const PageEleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 184, 252),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Left To Right Faded',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Page Eleven',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            BackButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const PageEight(),
                    pageAnimationType: BottomToTopFadedTransition()));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).push(PageAnimationTransition(
              page: const EndPage(),
              pageAnimationType: FadeAnimationTransition()));
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
