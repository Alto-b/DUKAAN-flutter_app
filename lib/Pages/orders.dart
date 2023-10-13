import 'package:dukaan_clone/Pages/orderdetail.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
    
        //appbar
          appBar:AppBar(
            actionsIconTheme: IconThemeData(color: Colors.white),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Orders",style: TextStyle(color: Colors.white),),
                Icon(Icons.arrow_drop_down,color: Colors.white,)
              ],
            ),
            centerTitle: true,
            actions: const [
              Icon(Icons.search),
            ],
            
          //tab bar
              bottom:TabBar(tabs: const [
                Tab(text: 'All',),
                Tab(text: 'Pending',),
                 Tab(text: 'Accepted',),
                Tab(text: 'Shipped',),
                 Tab(text: 'Delivered',),
                Tab(text: 'Rejected',),
                 Tab(text: 'Cancelled',),
                Tab(text: 'Failed',),
              ],
              unselectedLabelColor: Colors.white,
              labelColor: const Color.fromARGB(255, 247, 247, 247),
              indicatorColor: Colors.white,
              indicatorSize:TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              isScrollable: true,
              indicator: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
                //color: Color.fromARGB(255, 244, 244, 244)
              ),
              indicatorPadding: EdgeInsets.all(8),
              ),
          ),

          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Column(
                children: [
                  //tile1
                  ListTile(  
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetail(),));
                    },
                    leading: Image.network("https://m.media-amazon.com/images/I/81M3azFd-WL.jpg"),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Acer Nitro 5"),
                        Text("16GB/1TB SSD,RTX 2080ti"),
                        Text("₹1,05,000"),
                      ],
                    ),
                    trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
                  ),
                  SizedBox(height: 20,),

                  //tile2
                  ListTile(
                leading: Image.network("https://m.media-amazon.com/images/I/81M3azFd-WL.jpg"),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Acer Nitro 5"),
                    Text("8GB/1TB SSD,RTX 1650ti"),
                    Text("₹85,000"),
                  ],
                ),
                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
              ),
                ],
              )
            ]),
          ),
        
      ),
    );
  }
}