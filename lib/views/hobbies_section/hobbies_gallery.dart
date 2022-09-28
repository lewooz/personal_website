/*
import 'dart:math';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselGallery extends StatefulWidget {
  @override
  _CarouselGalleryState createState() => _CarouselGalleryState();
}

class _CarouselGalleryState extends State<CarouselGallery> {
  CarouselController _controller;

  @override
  void initState() {
    _controller = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = min(800, screenSize.height - 140);
    return CarouselSlider(
      carouselController: _controller,
      items: [
        HobbieItem(
          title: 'Bodybuilding',
          subtitle: 'Go hard or go home!',
          text: 'Bodybuilding since 2010',
          imagePath: 'assets/png/hobbies_bodybuilding.png',
          callback: () => _controller.animateToPage(0),
        ),
        HobbieItem(
          title: 'Traveling & Vacation',
          subtitle: 'Seeing new places is wonderful.',
          text:
          'Travelling & vacation allows me to see regions and rest between hard working periods.',
          imagePath: 'assets/png/hobbies_vacation.png',
          callback: () => _controller.animateToPage(1),
        ),
        HobbieItem(
          title: 'Football',
          subtitle: 'Love watching football matches',
          text:
          """I am a big fan of Beşiktaş JK and I try not to miss it's matches.""",
          imagePath: 'assets/png/hobbies_football.png',
          callback: () => _controller.animateToPage(2),
        ),
        HobbieItem(
          title: 'Coding',
          subtitle: 'Coding is a passion',
          text:
          """I absolutely love developing new software that makes people's life easier""",
          imagePath: 'assets/png/hobbies_coding.png',
          callback: () => _controller.animateToPage(3),
        ),
        HobbieItem(
          title: 'Video Games',
          subtitle: 'Fun times...',
          text:
          """I am playing video games since I was 3 and it seems like I'll continue to play these games until the end of my life.""",
          imagePath: 'assets/png/hobbies_games.png',
          callback: () => _controller.animateToPage(3),
        )
      ],
      options: CarouselOptions(
        // enableInfiniteScroll: false,
        // scrollPhysics: NeverScrollableScrollPhysics(),
        viewportFraction: 1,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 1),
        autoPlayInterval: Duration(seconds: 6),
        height: height,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
      ),
    );
  }
}

class HobbieItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String text;
  final String imagePath;
  final VoidCallback callback;
  HobbieItem({
    @required this.title,
    @required this.subtitle,
    @required this.text,
    @required this.imagePath,
    @required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Color(0x55595362), BlendMode.color),
            fit: BoxFit.contain,
            image: AssetImage(imagePath),
          ),
        ),
        child: Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                padding: EdgeInsets.all(16),
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white38,
                ),
                child: _buildText(context: context),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildText({
    @required BuildContext context,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subtitle,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ],
    );
  }
}
*/
