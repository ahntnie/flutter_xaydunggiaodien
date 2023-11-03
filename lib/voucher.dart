import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Voucher extends StatefulWidget {
  const Voucher({super.key});

  @override
  State<Voucher> createState() => _VoucherState();
}
final imgPath = [
  Image.asset('asset/voucher1.jpg'),
  Image.asset('asset/voucher2.jpg'),
  Image.asset('asset/voucher3.jpg'),

];
int myCurrentIndex = 0;
class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(options: CarouselOptions(
          autoPlay: true,
          height: 180,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 2),
          enlargeCenterPage: true,
          aspectRatio: 3.0,
          onPageChanged: (index, reason) {
            setState(() {
              myCurrentIndex = index;
            });
          },
        ),
        items: imgPath,
        ),
        const SizedBox(height: 20,),
        AnimatedSmoothIndicator(activeIndex: myCurrentIndex,
              count: imgPath.length,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                spacing: 10,
                dotColor: Colors.grey.shade200,
                activeDotColor: Colors.grey.shade900,
                paintStyle: PaintingStyle.fill,
              ),)
        
      ],
    );
  }
}