import 'package:flutter/material.dart';
import 'package:flutter_xaydunggiaodien/bottomBar.dart';
import 'package:flutter_xaydunggiaodien/drawer.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile",style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold, fontSize: 25)),
        backgroundColor: Colors.blue,
        ),
        bottomNavigationBar: BottomNav() ,
        drawer: MyDrawer(),
        body: Column(children: [
          Column(
              children: [
                Container(     
                    margin: const EdgeInsets.only(top:20), 
                    width: 200,
                    height: 200,
                    decoration: ShapeDecoration(
            shape: CircleBorder(
              side: BorderSide(width: 1, color: Theme.of(context).primaryColor),
            ),
            image:const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("asset/tobi.jpg"),
                alignment: Alignment.center))
                )
              ],
          ),
          const SizedBox(height: 25,),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Name:   Bach Anh Tien",style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                  ),
                  
                  ),
                  Text("Phone:   0326581043",style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                  )
                  ),
                  Text("ID:   0306211298",style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                  )
                  ),
                ],
              )
            ],
          )
        ]),
    );
  }
}