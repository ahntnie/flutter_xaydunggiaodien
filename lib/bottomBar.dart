import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          
            BottomNavigationBarItem(
              
            icon: Icon(Icons.home,size: 40,color: Colors.black,),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people,size: 40,color: Colors.black,),
            label: 'Profile',
          ),
        ],
        
        );
  }
}