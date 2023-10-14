import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


List<Icon> icons=[
  Icon(
    Icons.add,
  size:20,
  color:const Color.fromARGB(255, 4, 4, 4),
  ),
  Icon(
    Icons.comment,
  size:20,
  color:const Color.fromARGB(255, 0, 0, 0)
  ),
  Icon(
    Icons.receipt,
  size:20,
  color:const Color.fromARGB(255, 0, 0, 0)
  ),
  Icon(
    Icons.support_agent,
  size:20,
  color:const Color.fromARGB(255, 0, 0, 0)
  ),
 
];

// List<Color> colors=[
//   const Color.fromARGB(255, 12, 97, 15),
//   Color.fromARGB(255, 215, 140, 20),
//   Color.fromARGB(255, 9, 215, 67),
//   Color.fromARGB(255, 73, 8, 176),
//   const Color.fromARGB(255, 17, 115, 195),
//   Color.fromARGB(255, 14, 97, 199),
//   const Color.fromARGB(255, 68, 68, 67)
// ];
  
List<String> stats=[
  'ORDERS',
  'TOTAL SALES',
  'STORE VIEWS',
  'PRODUCT VIEWS',
];
List<String> statsval=[
  '1254',
  '2214',
  '10234',
  '7589',
];

List<String> options=[
  'ADD PRODUCT',
  'REVIEWS',
  'RATINGS',
  'SUPPORT'
];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(

    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(elevation: 5,
              title: Text(""),
              ),
            //SizedBox(height:80),
            Align(child: 
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("dukaan",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 43, 146, 230)),),
            //     Text("\u00AE",)
            //   ],
            // )
             Stack(
              children: <Widget>[
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Color(0xff136eb4),
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
                        // Image(image: AssetImage("OIP-removebg-preview.png")),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'WELCOME TO DUKAAN!',
                          //style: GoogleFonts.josefinSans(fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Your Global Commerce Partner, Engineered for Peak Performance',
                         // style: GoogleFonts.poppins(
                              //color: Colors.black54, fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ),
          
            // SizedBox(height: 20,),
            // Text("' Your Online Store '",style: TextStyle(fontWeight: FontWeight.w600),),
            //SizedBox(height: 1,),
            
           SizedBox(
           height: 220,
            width:double.infinity,
             child: Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: GridView.builder(
                    itemCount: options.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,crossAxisSpacing: 7,mainAxisSpacing: 8,
                    childAspectRatio: 5/2), 
                    itemBuilder: (context,index){
                        return GridTile(
                          child:Card(
                            //color: Color.fromARGB(255, 255, 255, 255),
                            //shape: StadiumBorder(side: BorderSide(width: 1)),
                           //shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
                           shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(70)),
                            borderOnForeground: true,
                            //color: Color.fromARGB(255, 65, 186, 242),
                            shadowColor: Colors.blueGrey,
                            elevation: 6,
                            child: ListTile(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                     // icons[index],
                                      Text(options[index],style: 
                                          TextStyle(fontSize: 16,fontWeight: FontWeight.w800,
                                              color: Color.fromARGB(255, 72, 72, 72)),),
                                    ],
                                  ),
                                  icons[index],
                                ],
                              ),
                            ),
                                           
                          )
                        );
                    }
                    ),
               ),
             ),
           ),SizedBox(height: 2,),
           Text("STATS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),),
             SizedBox(
           height: 400,
            width:double.infinity,
             child: Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: GridView.builder(
                    itemCount: stats.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,crossAxisSpacing: 7,mainAxisSpacing: 7,
                    childAspectRatio: 3/2), 
                    itemBuilder: (context,index){
                        return GridTile(
                          child:Card(
                            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(70)),
                            elevation: 5,
                            child: ListTile(
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                     // icons[index],
                                      Text(stats[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: const Color.fromARGB(255, 100, 99, 99)),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Text(statsval[index],style: 
                                      TextStyle(color: Colors.green,fontWeight: FontWeight.w700,fontSize: 30),)
                                  //icons[index],
                                ],
                              ),
                            ),
                          
                          )
                        );
                    }
                    ),
               ),
             ),
           ),
          ],
          
        ),
      ),
      
      
    ),
          
    );
 
  }
}