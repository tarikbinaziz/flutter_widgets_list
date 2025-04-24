/*
Material Design 3 introduced 4 carousel layouts:

Multi-browse:
 This layout shows at least one large, medium, and small carousel item at a time. This layout is supported by CarouselView.weighted.
Uncontained (default): 
 This layout show items that scroll to the edge of the container. This layout is supported by CarouselView.
Hero:
 This layout shows at least one large and one small item at a time. This layout is supported by CarouselView.weighted.
Full-screen: This layout shows one edge-to-edge large item at a time and scrolls vertically. The full-screen layout can be supported by both constructors.
*/

import 'package:flutter/material.dart';

class CarouselViewWidget extends StatefulWidget {
  const CarouselViewWidget({super.key});

  @override
  _CarouselViewWidgetState createState() => _CarouselViewWidgetState();
}

class _CarouselViewWidgetState extends State<CarouselViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel View'),
      ),
      body: Container(),
    );
  }
}
