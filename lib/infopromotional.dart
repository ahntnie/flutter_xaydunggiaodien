import 'package:flutter/material.dart';

class InforPhone extends StatelessWidget {
  const InforPhone({  
      super.key, 
      required this.price,
      required this.img,
      required this.info,
    required this.sell
  });
  final price;
  final info;
  final img;
  final sell;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 2.1,
        child: Column(children: [
          Image.asset(
            img,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RichText
            (
              textAlign: TextAlign.center,
              text: TextSpan(
                text: info,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                )
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    price,
                    style: const TextStyle(
                      color: Colors.red,
                      //fontSize: 15,
                    ),
                  ),
                  
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  margin: const EdgeInsets.only(left: 3),
                  color: Colors.grey,
                  child: Text(
                    sell,
                    style: const TextStyle(
                      color: Colors.red,
                      //fontSize: 15,
                    ),
                  ),
                  
                ),
              ],
            ),
            
          ),
           ElevatedButton(
            onPressed: () {},
            child: const Text('Details', style: TextStyle(color: Colors.white, fontSize: 15),),
            style: ButtonStyle(
             backgroundColor: MaterialStateProperty.all(Colors.blue),
             shape: MaterialStateProperty.all(LinearBorder.start())
          )
            
          ),
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
  }
}