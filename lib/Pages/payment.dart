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

      body: Center(
        child: Column(
          children: [
            Text("Transaction limit"),
            Text("data"),
            LinearProgressIndicator(value: 20.0,)
          ],
        ),
      ),

    );
  }
}