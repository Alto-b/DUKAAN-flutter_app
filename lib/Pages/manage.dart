import 'package:flutter/material.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({super.key});

  @override
  State<ManagePage> createState() => _ManagePage();
}

class _ManagePage extends State<ManagePage> {

List<Icon> icons=[
  Icon(
    Icons.payment_outlined,
  size:40,
  color:Colors.white,
  ),
  Icon(
    Icons.discount_outlined,
  size:40,
  color:Colors.white
  ),
  Icon(
    Icons.group_outlined,
  size:40,
  color:Colors.white
  ),
  Icon(
    Icons.bolt_outlined,
  size:40,
  color:Colors.white
  ),
  Icon(
    Icons.circle_outlined,
  size:40,
  color:Colors.white
  ),
  Icon(
    Icons.electric_bike_outlined,
  size:40,
  color:Colors.white
  ),
  Icon(
    Icons.qr_code_2_outlined,
  size:40,
  color:Colors.white
  ),
];

List<Color> colors=[
  const Color.fromARGB(255, 12, 97, 15),
  Color.fromARGB(255, 215, 140, 20),
  Color.fromARGB(255, 9, 215, 67),
  Color.fromARGB(255, 73, 8, 176),
  const Color.fromARGB(255, 17, 115, 195),
  Color.fromARGB(255, 14, 97, 199),
  const Color.fromARGB(255, 68, 68, 67)
];
  
List<String> names=[
  'Payments',
  'Discount Coupons',
  'Audience',
  'Dukaan Plugins',
  'Dukaan Themes',
  'Delivery',
  'Store QR Code'
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      //appbar
      appBar: AppBar(
        title: const Text("Manage Store",
        style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
        centerTitle: true,
      ),

      //gridview
        body: Padding(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,mainAxisSpacing: 3,crossAxisSpacing: 3,
            childAspectRatio: MediaQuery.of(context).size.width/
            (MediaQuery.of(context).size.height/3)), 
            itemBuilder: (context,index){
                return GridTile(
                  child:Card(
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height:40,
                              color: colors[index],
                              child: Center(
                                child: icons[index],
                              ),
                            ),
                          ),
                          Text(names[index]),
                        ],
                      ),
                    ),
                  )
                );
            }
            ),
        ),backgroundColor: Colors.grey[200],
        );
      
    
  }
}