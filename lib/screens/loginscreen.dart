import 'dart:html';

import 'package:cilected_assignmnets/screens/dashbpardscreen.dart';
import 'package:cilected_assignmnets/screens/forgotpasswordscreen.dart';
import 'package:cilected_assignmnets/widgets/customtext.dart';
import 'package:flutter/material.dart';

import 'signupscree.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final key= GlobalKey<FormState>();
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    data: "Login",
                    color: Colors.purple,
                    weight: FontWeight.bold,
                    size: 40),
                Row(
                  children: [
                    CustomText(
                        data: "Don't have an account?",
                        color: Colors.black,
                        weight: FontWeight.normal,
                        size: 15),
                    TextButton(
                        onPressed: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignupScree())))),
                        child: CustomText(
                            data: "create your account",
                            color: Colors.red,
                            weight: FontWeight.bold,
                            size: 15))
                  ],
                )
              ],
            ),
          ),
          Container(
            padding:EdgeInsets.only(top: 20) ,
            margin: EdgeInsets.symmetric(
              horizontal:20,
            ),
            child: Form(
              key: key,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return "text is empty";
                      }
                      if(!value.contains('@')){
                        return "@ is missing";
                      }
                    },
                    controller: emailcontroller,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.email),
                        label: Text("Enter email"),
                        enabledBorder: OutlineInputBorder(
                          
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey)),
                       ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return "password is empty";
                      }
                      
                    },
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
            
                        label: Text("enter password"),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.grey)),
                        
                  ),),
                SizedBox(height: 20,)
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Forgotpassword())));
                                

                },
                child: CustomText(
                    data: "Forgot Password ?",
                    color: Colors.red,
                    weight: FontWeight.bold,
                    size: 15)),
          ),
          SizedBox(height: 20,),
      Container(
            height: 40,
            width: 20,
            child:
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 200),
               child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  )
                ),
                
                onPressed: () {
                  if(key.currentState!.validate()){
                     Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DashboadScreen())));

                  }
                },
               
                child: CustomText(
                    data: "LOGIN",
                    color: Colors.white,
                    weight: FontWeight.bold,
                    size: 15),
            ),
             ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(height:50),
                CustomText(data: "Or Login With", color: Colors.grey, weight: FontWeight.normal, size: 15),
                SizedBox(height: 10,),
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius:20,
                      
                      backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/44/44646.png"),
                    
                    ),
                    CircleAvatar(
                      radius:20,
                      
                      backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/002/534/045/original/social-media-twitter-logo-blue-isolated-free-vector.jpg"),
                    
                    ),
                    CircleAvatar(
                      radius:20,
                      
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSK5q0FP74VV9wbfwP378_7kj7iDomHuKrxkXsxDdUT28V9dlVMNUe-EMzaLwaFhneeuZI&usqp=CAU"),
                    
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
