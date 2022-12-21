import 'dart:math';

import 'package:cilected_assignmnets/screens/forgotpasswordscreen.dart';
import 'package:cilected_assignmnets/widgets/customtext.dart';
import 'package:flutter/material.dart';

import 'loginscreen.dart';
import 'signupscree.dart';

class SignupScree extends StatelessWidget {
  const SignupScree({super.key});

  @override
  Widget build(BuildContext context) {
    return 
Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    data: "signup",
                    color: Colors.purple,
                    weight: FontWeight.bold,
                    size: 40),
                Row(
                  children: [
                    CustomText(
                        data: "Already have an Account?",
                        color: Colors.black,
                        weight: FontWeight.normal,
                        size: 15),
                    TextButton(
                        onPressed: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>LoginScreen())))),
                        child: CustomText(
                            data: "Login here",
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
            child: Column(
              children: [
                TextFormField(
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
                
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LoginScreen()))),
                child: CustomText(
                    data: "signup",
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
                CustomText(data: "Or Signup With", color: Colors.grey, weight: FontWeight.normal, size: 15),
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
