import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      margin: const EdgeInsets.only(top:20),
      
      padding: const EdgeInsets.all(20),
      
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Contact (Free call)",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                  ),
                  Text("Complaints: 1800.1062 (8:00 - 21:30)"),
                  Text("Warranty: 1800.1064 (8:00 - 21:00)")
                ],  
              ),
              Column(

              ),
              Column(

              ),
          ]),
    );
  }
}