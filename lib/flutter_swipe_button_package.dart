import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class FlutterSwipeButtonWidget extends StatefulWidget {
  const FlutterSwipeButtonWidget({super.key});

  @override
  _FlutterSwipeButtonWidgetState createState() =>
      _FlutterSwipeButtonWidgetState();
}

class _FlutterSwipeButtonWidgetState extends State<FlutterSwipeButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Swipe Button'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  SwipeButton(
                    thumbPadding: const EdgeInsets.all(3),
                    thumb: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                    elevationThumb: 2,
                    elevationTrack: 2,
                    activeTrackColor: Colors.grey.shade300,
                    activeThumbColor: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    child: Text(
                      "Swipe to ...".toUpperCase(),
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onSwipe: () {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(
                      //     content: Text("Swipped"),
                      //     backgroundColor: Colors.green,
                      //   ),
                      // );
                    },
                  ),
                  const Positioned(
                    right: 0,
                    child: Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
