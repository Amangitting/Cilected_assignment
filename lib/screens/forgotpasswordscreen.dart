import 'package:cilected_assignmnets/screens/loginscreen.dart';
import 'package:cilected_assignmnets/widgets/customtext.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  TextEditingController Forgotpasswordcontroller=TextEditingController();
  final keys=GlobalKey<FormState>();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomText(
              data: "Forgot password",
              color: Colors.purple,
              weight: FontWeight.bold,
              size: 40),
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
                "https://cdn-icons-png.flaticon.com/512/1803/1803612.png"),
          ),
          CustomText(
              data: "Please fill your details below",
              color: Colors.grey,
              weight: FontWeight.normal,
              size: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: keys,
              child: TextFormField(
                controller: Forgotpasswordcontroller,
                validator: (value){
                        if(value==null||value.isEmpty){
                          return "text is empty";
                        }
                        if(!value.contains('@')){
                          return "@ is missing";
                        }
                      },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  label: Text("Enter email"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
            ),
          ),
          Container(
              height: 40,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: (){
                    if(keys.currentState!.validate()){
                      Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => LoginScreen())));
                      
                    }
                  } ,
                  child: CustomText(
                      data: "submit",
                      color: Colors.white,
                      weight: FontWeight.bold,
                      size: 15),
                ),
              ))
        ],
      )),
    );
  }
}
