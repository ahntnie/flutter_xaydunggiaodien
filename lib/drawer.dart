import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text('Menu',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      ListTile(
        
        title: const Text('Home'),
        
        trailing: const Icon(Icons.home),
        onTap: (
          
        ) {
          Navigator.popUntil(context, (route) => route.isFirst);
           Navigator.pushNamed(context, '/home');
        },
      ),
      ListTile(
        title: const Text('Profile'),
        trailing: const Icon(Icons.people),
        onTap: () {
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushNamed(context, '/profile');

        },
      ),
    ],
  ),
);
  }
}