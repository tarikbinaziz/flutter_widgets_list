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
import 'package:flutter_widgets_list/componants/images.dart';

class CarouselViewWidget extends StatefulWidget {
  const CarouselViewWidget({super.key});

  @override
  _CarouselViewWidgetState createState() => _CarouselViewWidgetState();
}

class _CarouselViewWidgetState extends State<CarouselViewWidget> {
  final CarouselController controller = CarouselController(initialItem: 1);
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: height / 2.5),
              child: CarouselView(
                scrollDirection: Axis.horizontal,
                itemExtent: 300,
                shrinkExtent: 80,
                itemSnapping: true,
                children: List<Widget>.generate(imageList.length, (int index) {
                  return Image.asset(
                    height: 200,
                    imageList[index],
                    fit: BoxFit.cover,
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsetsDirectional.only(top: 8.0, start: 8.0),
              child: Text('Multi-browse layout'),
            ),
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: height / 2.5),
              child: CarouselView.weighted(
                scrollDirection: Axis.horizontal,
                flexWeights: const <int>[1, 2, 3, 2, 1],
                consumeMaxWeight: false,
                children: List<Widget>.generate(imageList.length, (int index) {
                  return Image.asset(
                    height: 200,
                    imageList[index],
                    fit: BoxFit.cover,
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: height / 2.5),
              child: CarouselView.weighted(
                controller: controller,
                scrollDirection: Axis.horizontal,
                flexWeights: const <int>[
                  1,
                  7,
                  1,
                ],
                itemSnapping: true,
                children: List<Widget>.generate(imageList.length, (int index) {
                  return Image.asset(
                    height: 200,
                    imageList[index],
                    fit: BoxFit.cover,
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
