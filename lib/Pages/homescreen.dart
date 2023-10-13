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
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height:80),
          Align(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("dukaan",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 43, 146, 230)),),
              Text("\u00AE",)
            ],
          )),
    
          SizedBox(height: 20,),
          Text("' Your Online Store '",style: TextStyle(fontWeight: FontWeight.w600),),
          SizedBox(height: 30,),
          
         SizedBox(
         height: 220,
          width:double.infinity,
           child: Expanded(
             child: GridView.builder(
                itemCount: options.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,crossAxisSpacing: 3,
                childAspectRatio: 5/2), 
                itemBuilder: (context,index){
                    return GridTile(
                      child:Card(
                        borderOnForeground: true,
                        //color: Color.fromARGB(255, 65, 186, 242),
                        shadowColor: Colors.blueGrey,
                        elevation: 5,
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
         ),SizedBox(height: 10,),
         Text("STATS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),),
           SizedBox(
         height: 400,
          width:double.infinity,
           child: Expanded(
             child: GridView.builder(
                itemCount: stats.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,crossAxisSpacing: 3,
                childAspectRatio: 3/2), 
                itemBuilder: (context,index){
                    return GridTile(
                      child:Card(
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
        ],
        
      ),
      
      
    ),
          
    );
 
  }
}