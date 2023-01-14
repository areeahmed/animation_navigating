import 'package:animation_navigating/src/left_to_right_faded.dart';
import 'package:animation_navigating/src/thank_you_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 184, 252),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hope it will be Useful',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'End Page',
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
                    page: const PageEleven(),
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
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('End of App'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).push(PageAnimationTransition(
              page: const ThankYouScreen(),
              pageAnimationType: FadeAnimationTransition()));
        },
      ),
    );
  }
}
