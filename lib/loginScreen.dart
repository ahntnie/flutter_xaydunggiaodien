import 'package:flutter/material.dart';
import 'package:flutter_xaydunggiaodien/home.dart';
import 'package:flutter_xaydunggiaodien/main.dart';

class Login extends StatefulWidget {
  
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  final form_key = GlobalKey<FormState>();
    String txt="";
     final username = TextEditingController();
     final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
  
    
     return  Scaffold(
       body: Form(
        key: form_key,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(  
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("L O G I N", style: TextStyle(color: Colors.red,
              fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                  controller: username,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                    icon: Icon(Icons.person),
                    hintText: 'What is your username?',
                    labelText: 'Username',
                  ),          
                  validator: ( value) {
                    if(value == ""){
                      return "Username it not empty";
                    }
                    return null;
                  }
                ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                
                  controller: password,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                    icon: Icon(Icons.lock),
                    hintText: 'What is your password?',
                    labelText: 'Password',
                    
                  ),
                   obscureText: true,
                  obscuringCharacter: "*",
                  // onSaved: (String? value) {
                  //   // This optional block of code can be used to run
                  //   // code when the user saves the form.
                  // },
                  validator: (value) {
                    if(value == ""){
                      return "Password is not empty";
                    }
                    },
                ),
            ),
            const SizedBox(height: 20,),
              Text(txt,style: const TextStyle(color: Colors.red,fontSize: 15),),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [        
                    ElevatedButton(onPressed: (){
                      if(form_key.currentState!.validate()){
                          if(username.text == password.text){
                            Navigator.popUntil(context, (route) => route.isFirst);
                            Navigator.pushNamed(context, '/home');
                        }
                          else {
                          txt = "Đăng nhập thất bại";
                      }
                      }
                    
                      
                    }, child: const Text("Login")),
                  ],
                ),
              )
          ],),
        
        ),
        
     
     
         ),
     );
  
    }
}