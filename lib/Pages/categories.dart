import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  List<String> category=[
    "Mobile",
    "Mobile",
    "Gaming",
    "Gaming",
    "Controllers",
    "Controllers"
  ];
  List<String> subcategory=[
    "Budget",
    "Gaming",
    "Desktop",
    "Laptop",
    "wired",
    "Wireless"
  ];
  List<String> image=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHAvOjeziE7vRn3Gug-ohu915CmY0noc5VWA&usqp=CAU",
    "https://www.91-cdn.com/hub/wp-content/uploads/2021/05/PIXEL-6-5K3.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyhau6eF7iP0YQ3yWvjTlkCd1sabrPFPg1Cg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyhau6eF7iP0YQ3yWvjTlkCd1sabrPFPg1Cg&usqp=CAU",
    "https://www.sacbee.com/reviews/wp-content/uploads/2022/03/EasySMX-Wired-Gaming-Controller-sb-768x507.jpg",
    "https://assets.xboxservices.com/assets/68/c9/68c99ef1-9d65-46b2-829a-4a414987bbea.jpg?n=Xbox-Wireless-Controller_Gallery-0_957848-1_1350x759.jpg"
  
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView.builder(
          itemCount: category.length,
          itemBuilder: (context,index){
            return Card(
              color: Color.fromARGB(255, 255, 255, 255),
              child: ListTile(
                //leading: Icon(Icons.home),
                leading: Image.network(image[index],height: 120,width:120,),
                title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(category[index],style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    Text(subcategory[index],style: TextStyle(fontSize: 15),),
                  ],
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //IconButton(onPressed: (){}, icon:  Icon(Icons.share),),
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