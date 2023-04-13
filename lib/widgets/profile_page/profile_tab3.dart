import 'package:flutter/material.dart';

class ProfileTab3 extends StatelessWidget {
  const ProfileTab3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Align(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 15,
                bottom: 10,
              ),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.person_pin_outlined,
                color: Colors.white,
                size: 40,
              ),
            ),

            // title
            const Text(
              'Photos and videos of you',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),

            const SizedBox(height: 10),
            // sub
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: Text(
                'When people tag you in photos and videos, they will appear here.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
