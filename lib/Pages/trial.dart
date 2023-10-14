
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: 150,
                  color: Color(0xFF136EB4),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Image.network(
                            "https://th.bing.com/th/id/OIP.LKhvrONto0R3sOrM5YKzyAAAAA?pid=ImgDet&rs=1"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'WELCOME TO DUKAAN!',
                          style: GoogleFonts.josefinSans(fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Your Global Commerce Partner, Engineered for Peak Performance',
                          style: GoogleFonts.poppins(
                              color: Colors.black54, fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
           
           
          
          ],
        ),
      ),
    );
  }
}