import 'package:cilected_assignmnets/widgets/customtext.dart';
import 'package:flutter/material.dart';

class DashboadScreen extends StatelessWidget {
  const DashboadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.grey,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: IconButton(
              tooltip: "Dashboard",
              onPressed: (){}, icon: Icon(Icons.dashboard)),
          ),
          IconButton(
            tooltip: "search",onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(
            tooltip: "profile",onPressed: (){}, icon: Icon(Icons.people)),
          IconButton(
            tooltip: "Settings",onPressed: (){}, icon: Icon(Icons.settings)),
        ],
      ),),
      body: ListView(
        
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                CustomText(data: "which type of house", color: Colors.purple, weight: FontWeight.bold, size: 40),
                CustomText(data: "would you like to buy", color: Colors.purple, weight: FontWeight.bold, size: 40),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(5),
              border: Border.all()
            ),
            height: 130,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Container(margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  label: Text("Search by city, area or locality"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey)),
                      
                ),
              ),
              CustomText(data: "Top cities :", color: Colors.black, weight: FontWeight.bold, size: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    onPressed: () {},
                    child: CustomText(
                        data: "ahmedabad",
                        color: Colors.white,
                        weight: FontWeight.bold,
                        size: 15),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    onPressed: () {},
                    child: CustomText(
                        data: "Mumbai",
                        color: Colors.white,
                        weight: FontWeight.bold,
                        size: 15),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
                    onPressed: () {},
                    child: CustomText(
                        data: "Delhi",
                        color: Colors.white,
                        weight: FontWeight.bold,
                        size: 15),
                  ),
              ],)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20.0, top: 10),
            child: CustomText(data: "premium properties", color: Colors.grey, weight: FontWeight.bold, size: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                     Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: NetworkImage("https://png.pngtree.com/png-vector/20190302/ourmid/pngtree-vector-flat-icon-png-image_735756.jpg",))
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 20
                      ),
                      color: Colors.white,
                      height:70,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(data: "Omkar lotus", color: Colors.purple, weight: FontWeight.bold, size: 10),
                          CustomText(data: "Ahmedabad", color: Colors.grey, weight: FontWeight.normal, size: 8),
                          CustomText(data: "26.5 Cr", color: Colors.purple, weight: FontWeight.bold, size: 12),
                        ],
                      ),
                    )

                ]),
                Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                     Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: NetworkImage("https://png.pngtree.com/png-vector/20190302/ourmid/pngtree-vector-flat-icon-png-image_735756.jpg"))
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 20
                      ),
                      color: Colors.white,
                      height:70,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(data: "Omkar lotus", color: Colors.purple, weight: FontWeight.bold, size: 10),
                          CustomText(data: "Ahmedabad", color: Colors.grey, weight: FontWeight.normal, size: 8),
                          CustomText(data: "26.5 Cr", color: Colors.purple, weight: FontWeight.bold, size: 12),
                        ],
                      ),
                    )

                ])
                ],
              )
             
            ],
            ),
          )
        
         , Padding(
           padding: const EdgeInsets.only(left:20.0, top: 10),
           child: CustomText(data: "Featured  properties", color: Colors.grey, weight: FontWeight.bold, size: 20),
         ),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                     Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: NetworkImage("https://png.pngtree.com/png-vector/20190302/ourmid/pngtree-vector-flat-icon-png-image_735756.jpg"))
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 20
                      ),
                      color: Colors.white,
                      height:70,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(data: "Omkar lotus", color: Colors.purple, weight: FontWeight.bold, size: 10),
                          CustomText(data: "Ahmedabad", color: Colors.grey, weight: FontWeight.normal, size: 8),
                          CustomText(data: "26.5 Cr", color: Colors.purple, weight: FontWeight.bold, size: 12),
                        ],
                      ),
                    )

                ]),
                Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                     Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: NetworkImage("https://png.pngtree.com/png-vector/20190302/ourmid/pngtree-vector-flat-icon-png-image_735756.jpg"))
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 20
                      ),
                      color: Colors.white,
                      height:70,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(data: "Omkar lotus", color: Colors.purple, weight: FontWeight.bold, size: 10),
                          CustomText(data: "Ahmedabad", color: Colors.grey, weight: FontWeight.normal, size: 8),
                          CustomText(data: "26.5 Cr", color: Colors.purple, weight: FontWeight.bold, size: 12),
                        ],
                      ),
                    )

                ])
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