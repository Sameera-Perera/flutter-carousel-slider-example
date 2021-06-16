import 'package:flutter/material.dart';
import 'package:flutter_carousel_example/controllers/home_controller.dart';
import 'package:flutter_carousel_example/views/home/components/carousel_loading.dart';
import 'package:flutter_carousel_example/views/home/components/carousel_slider_data_found.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GetBuilder<HomeController>(
            builder: (_c){
              if(_c.isLoading)
                if(_c.carouselData.length>0)
                  return CarouselSliderDataFound(_c.carouselData);
                else
                  return CarouselLoading();
              else
                if(_c.carouselData.length>0)
                  return CarouselSliderDataFound(_c.carouselData);
                else
                  return Container();
            },
          )
      ),
    );
  }
}
