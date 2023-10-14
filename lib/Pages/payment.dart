import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: Text("Payments",
          style: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(color:Colors.white ),
          ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(width: 0),
                              borderRadius: BorderRadius.circular(50),
                              
                              
                              ),
                  //child: SizedBox(height: 20,),
                  child: Column(
                    children: [
                      SizedBox(height:10),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Transaction limit",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                         ),
                         SizedBox(height:10),
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("A free limit up to which you will recieve the online payments directly in your bank",),
                         ),
                         SizedBox(height: 20,),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: LinearProgressIndicator(
                                                 value: 0.8,
                                         ),
                         ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("₹10,000 left out of ₹1,00,000",style: TextStyle(color: Colors.grey),),
                  ],
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Text("Increase Limit")),
                SizedBox(height: 20,),
              
                    ],
                  ),
                  ),
              ),
             SizedBox(height: 30,),
              //set1
              Row(  
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Default Method",style: TextStyle(fontWeight: FontWeight.w700),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Online Payment"),
                        Icon(Icons.arrow_forward_ios,size: 12,)
                      ],
                    ),
                  ],
              ),
              SizedBox(height: 20,),
              //set2
              Row(  
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment Profile",style: TextStyle(fontWeight: FontWeight.w700),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bank Account"),
                        Icon(Icons.arrow_forward_ios,size: 12,)
                      ],
                    ),
                  ],
              ),
              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Payments overview"),
                 Row(
                   children: [
                     Text("Lifetime"),
                     IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_rounded),),
                   ],
                 )
                ],
              ),
              SizedBox(height: 30,),
              //buttons 
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                      TextButton(onPressed: (){}, child: 
                      Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(color: Color.fromARGB(255, 255, 153, 0),borderRadius: BorderRadius.circular(8),),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text("AMOUNT ON HOLD",style: TextStyle(color: Colors.white),),
                            Text("₹0",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      ),
                       TextButton(onPressed: (){}, child: 
                      Container(
                        width: 150,
                        height: 80,
                         decoration: BoxDecoration(color: Color.fromARGB(255, 64, 234, 70),borderRadius: BorderRadius.circular(8),),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("AMOUNT RECIEVED",style: TextStyle(color: Colors.white),),
                            Text("₹50,000",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      ),
                      

                ],
              )

            ],
          ),
          
          
        ),
      ),

    );
  }
}