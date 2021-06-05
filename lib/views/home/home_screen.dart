import 'package:flutter/material.dart';
import 'package:flutter_carousel_example/views/home/components/carousel_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CarouselLoading()),
    );
  }
}
