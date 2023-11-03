import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({super.key});
 List imgPath = [
  'asset/phone.jpg',
  'asset/phone1.jpg',
  'asset/phone2.jpg',
  'asset/phone3.jpg'
];

  @override
  Widget build(BuildContext context) {
      return Column(
        children: [
          CarouselSlider(
          options: CarouselOptions(height: 300.0,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 2),
          ),
          items: imgPath.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width/2,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child:
                  Column(
                    
                    children: [
                      Image.asset(item,
                      width: MediaQuery.of(context).size.width / 2.0 - 5,
                      height: (MediaQuery.of(context).size.height / 3.5 - 5) ,
                      ),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Buy', style: TextStyle(color: Colors.white, fontSize: 15),),
                        style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.pink),
                        shape: MaterialStateProperty.all(LinearBorder.start())
                      ))
                    ],
                  )    
                );
              },
            );
          }).toList(),
          ),
        ],
      );  
  }
}