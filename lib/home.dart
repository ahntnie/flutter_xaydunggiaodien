import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_xaydunggiaodien/contact.dart';
import 'package:flutter_xaydunggiaodien/detailHome.dart';
import 'package:flutter_xaydunggiaodien/drawer.dart';
import 'package:flutter_xaydunggiaodien/profile.dart';
import 'package:flutter_xaydunggiaodien/promotional.dart';
import 'package:flutter_xaydunggiaodien/voucher.dart';

import 'bottomBar.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Home screen",style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold, fontSize: 25)),
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBar: BottomNav(),
        drawer: const MyDrawer(),
        body:   SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                    children: [
                      TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(width: 0.8)
                        ),
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search,
                        size: 30,),
                        suffixIcon:  IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: (){},
                        )
                      ),       
                      )
                    ],
                ),
                 ),
                               const SizedBox(height: 25,),
                const Column(
                  children: [
                    Voucher()
                  ],
                ),
                 const SizedBox(height: 25,),
                const Column(
                  children: [
                    Text("BEST SELLER", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    )
                    ),
                  ],
                ),
                Column(
                  children: [
                    Detail()
                  ],
                ),
                const Divider(),
                const SizedBox(height: 25,),
                const Column(
                  children: [
                    Text("PROMOTIONAL PRODUCST",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                    ),)
                  ],
                ),
                const Column(
                  children: [
                    Pro_phone()
                  ],
                ),  
                const Column(
                  children: [
                    Contact()
                  ],
                )     
              ],
            ),                  
            ),          
        ),
      );
  
    
  }
}