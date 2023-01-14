import 'package:animation_navigating/src/scale.dart';
import 'package:animation_navigating/src/top_to_bottom_faded.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/rotate_animation_transition.dart';
import 'package:page_animation_transition/animations/scale_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class PageSeven extends StatelessWidget {
  const PageSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 86, 156),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Rotation',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Page Seven',
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
                    page: const PageSix(),
                    pageAnimationType: ScaleAnimationTransition()));
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
              page: const PageEight(),
              pageAnimationType: RotationAnimationTransition()));
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
