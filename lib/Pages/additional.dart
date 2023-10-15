
import 'package:flutter/material.dart';

class AdditionalInfo extends StatefulWidget {
  const AdditionalInfo({super.key});

  @override
  State<AdditionalInfo> createState() => _AdditionalInfoState();
}

class _AdditionalInfoState extends State<AdditionalInfo> {
  bool val=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appbar
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Additional Information",style: TextStyle(color: Colors.white)),
      ),

     body: Column(
          children: [
            Expanded(
              child: ListView(
                children:  [
                  ListTile(
                    leading: Icon(Icons.phonelink_lock_rounded),
                    title: Text("Lockscreen Notification"),
                    trailing:Switch(value: val, onChanged: (value) {
                      setState(() {
                        if(val==false){
                          val=true;
                        }else{
                          val=false;
                        }
                      });
                    },)
                  ),
                  ListTile(
                    leading: Icon(Icons.lock_outline_rounded),
                    title: Text("Privacy policy"),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail_outline_outlined),
                    title: Text("Get In Touch"),
                  ),
                  ListTile(
                    leading: Icon(Icons.star_outline_outlined),
                    title: Text("Rate Us"),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Sign Out"),
                  ),
                ],
              ),
            ),
            
            // Footer Text
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: const [
                  Text("Version",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.grey),),
                  Text("3.7.11"),
                ],
              ),
            ),
          ],
        ),
      );
      
    
  }
}