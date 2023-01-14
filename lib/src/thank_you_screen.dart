import 'package:flutter/material.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Thanks You',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 200,
              width: 200,
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/owner.jpg')),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.verified,
                  size: 30,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Ari Ahmed Ibrahim',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
