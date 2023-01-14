import 'package:animation_navigating/src/fade.dart';
import 'package:animation_navigating/src/rotation.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/animations/scale_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class PageSix extends StatelessWidget {
  const PageSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 89, 134, 172),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Scale',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Page Six',
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
                    page: const PageFive(),
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
              page: const PageSeven(),
              pageAnimationType: ScaleAnimationTransition()));
        },
        child: const Icon(Icons.zoom_out_map),
      ),
    );
  }
}
