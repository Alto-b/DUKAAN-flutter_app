import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {

   bool val=false;

  List<String> products=[
    "IPhone",
    "Samsung",
    "IQOO",
    "Red Dragon",
    "Lenovo",
    "Acer",
    "Dell"

  ];
  List<String> model=[
    "15Pro",
    "S23",
    "9Pro",
    "Controller",
    "Legion",
    "Nitro 5",
    "G15"
  ];
  List<String> price=[
    "1,20,000",
    "1,00,000",
    "50,000",
    "4,500",
    "1,45,000",
    "70,499",
    "1,05,000"
  ];
  List<String> image=[
    "https://toppng.com/uploads/preview/apple-iphone-15-pro-max-black-titanium-png-11695041010qufuzlrjdv.png",
    "https://www.sammyfans.com/wp-content/uploads/2022/03/galaxy-s23-ultra-phantom-black-img.jpg",
    "https://toppng.com/uploads/preview/apple-iphone-15-pro-max-black-titanium-png-11695041010qufuzlrjdv.png",
    "https://m.media-amazon.com/images/I/51fcPbutQkL._AC_.jpg",
    "https://www.lenovo.com/medias/lenovo-laptop-legion-5-15-amd-subseries-hero.png?context=bWFzdGVyfHJvb3R8MTYyNjIwfGltYWdlL3BuZ3xoNTIvaDU1LzE0MTkwNDY2NjI5NjYyLnBuZ3wwNTQ1YjQxMzI0ZGJiODc2YmIwNWE3YzRiMzNlZWEzNjg1ODJkZjljNDRhOGVhYTY2YzE1N2Q5OGVhNTlhYWUw",
    "https://m.media-amazon.com/images/I/81M3azFd-WL.jpg",
    "https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/g-series/g16-7630/media-gallery/black/notebook-g16-7630-nt-black-gallery-1.psd?fmt=png-alpha&pscan=auto&scl=1&hei=402&wid=536&qlt=100,1&resMode=sharp2&size=536,402&chrss=full"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 206, 206, 205),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return Card(
              color: Color.fromARGB(255, 255, 255, 255),
              child: ListTile(
                //leading: Icon(Icons.home),
                leading: Image.network(image[index],height: 120,width:120,),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(products[index],style:TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                    Text(model[index],style: TextStyle(fontSize: 15),),
                    Text('₹${price[index]}',style: TextStyle(fontSize: 15),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('In Stock',style: TextStyle(color: Colors.green),),
                    //     Switch(value: val, onChanged: (value) {
                    //   setState(() {
                    //     if(val==false){
                    //       val=true;
                    //     }else{
                    //       val=false;
                    //     }
                    //   });
                    // },)
                      ],
                    ),  
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                       Switch(value: val, onChanged: (value) {
                      setState(() {
                        if(val==false){
                              val=true;
                        }else{
                          val=false;
                        }
                      });
                    },)
                    ],),   
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: (){}, icon:  Icon(Icons.share),),
                      IconButton(onPressed: (){}, icon:  Icon(Icons.more_vert),),
                    ],
                  ),
                ),
                
              ),
            );
          }
        ),
      ),

    );
  }
}