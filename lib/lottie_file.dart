import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieFile extends StatefulWidget {
  const LottieFile({super.key});

  @override
  _LottieFileState createState() => _LottieFileState();
}

class _LottieFileState extends State<LottieFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Lottie.asset('assets/images/Frame 2.json',
                    width: 100, height: 100, fit: BoxFit.contain)),
          ],
        ),
      ),
    );
  }
}
