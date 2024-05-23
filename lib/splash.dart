import 'package:flutter/material.dart';
import 'package:hackathon/check.dart';
import 'package:hackathon/onboarding/onboarding.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CheckScreen()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 340, left: 50, right: 50),
                  child: Image.asset(
                    'assets/images/frontpage.png',
                    width: 274,
                    height: 100,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 121, right: 121),
              child: GestureDetector(
                child: Container(
                  width: 134,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xffA8A8A9),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
