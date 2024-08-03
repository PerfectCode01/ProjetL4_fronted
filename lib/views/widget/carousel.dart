import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<StatefulWidget> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: ["r1", "r2", "r3", "r4"].map((i) {
          return Stack(
            children: [
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text('jkdf')),
              ),
              Container(
                color: Colors.black.withOpacity(0.5),
              )
            ],
          );
        }).toList(),
        options: CarouselOptions(
          height: 150,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.6,
        ),
      ),
    );
  }
}
