// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dukaan_clone/Pages/additional.dart';
import 'package:dukaan_clone/Pages/payment.dart';
import 'package:dukaan_clone/Pages/premium.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  int indexNum=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
      ),
      
      //body

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            child: Column(
              children:[
                Row(
                  children: [
                    //Icon(Icons.home),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: CircleAvatar(radius: 30,child: Icon(Icons.business_rounded),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tech hub",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                          Text("Edit business details",style: TextStyle(fontSize: 15,color: Colors.blue,decoration: TextDecoration.underline,),)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                //little box
                Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text("Available credits",style: TextStyle(fontWeight: FontWeight.w400),),
                            Text("₹25",style: TextStyle(fontWeight: FontWeight.w700),),
                          ],
                        ),
                        Column(
                          children: [
                            //Icon(Icons.home),
                            ElevatedButton(onPressed: (){}, child: Text("Add Credits")),
                          ],
                        ),
                      ],
                    ),
                  ],     
                ),
                SizedBox(height: 20,),
      
                //options
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_outline_rounded),onTap: (){},
                      title: Text("Account Details"),
                      trailing: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
                      },
                      title: Text("Store Settings"),
                      trailing: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.payment),
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
                      },
                      title: Text("Payments"),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.mobile_friendly),onTap: (){},
                      title: Text("Get Your Own App"),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.computer_rounded),onTap: (){},
                      title: Text("Dukaan for PC"),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.people_outline),
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => PremiumPage(),));
                      },
                      title: Text("Join Dukaan VIP Club"),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.play_circle_outline),onTap: (){},
                      title: Text("Tutorials"),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline),onTap: (){},
                      title: Text("Help Center"),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                    ListTile(
                      leading: Icon(Icons.more_horiz_sharp),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AdditionalInfo(),));
                      },
                      title: Text("Additional Information"),
                      trailing: Icon(Icons.keyboard_arrow_right_outlined),
                    ),
                  ],   
                  
                ),
                
              ],
            ),
            
          ),
          
        ),
        
      ),



       
      //body

      

    );
  }
}