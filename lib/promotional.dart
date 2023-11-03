import 'package:flutter/material.dart';
import 'infopromotional.dart';
class Pro_phone extends StatelessWidget {
  const Pro_phone({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  [
                InforPhone(
                  img: 'asset/phone.jpg',
                  info: 'iPhone 15 Plus 512GB',
                  price: '30.990.000₫',
                  sell: '-5%'
                ),
                InforPhone(
                  img: 'asset/phone.jpg',
                  info: 'iPhone 15 Plus 512GB',
                  price: '30.990.000₫',
                  sell: '-5%'
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  [
                InforPhone(
                  img: 'asset/phone.jpg',
                  info: 'iPhone 15 Plus 512GB',
                  price: '30.990.000₫',
                  sell: '-5%'
                ),
                InforPhone(
                  img: 'asset/phone.jpg',
                  info: 'iPhone 15 Plus 512GB',
                  price: '30.990.000₫',
                  sell: '-5%'
                ),
              ],
            ),
          ]),
        ),
      );
    
  }
}