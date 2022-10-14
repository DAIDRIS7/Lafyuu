import 'package:flutter/material.dart';
List  product =[
{
  'name':'product 1',
  'price ': 200,
  'discount':'25%',
  'image':'assets/images/image1.png'


}



];
class list extends StatelessWidget{
  const list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView.builder(
      itemCount:product.length,
      itemBuilder: (BuildContext context, int index) {
return GestureDetector (child: Container(
  height:180,
  padding:EdgeInsets.all (12),
  margin:EdgeInsets.symmetric (horizontal: 12),
  decoration:BoxDecoration (),
  child: 
Column (children: [
  //image product
  Image.asset(product[index]['image']), 
    Text(product[index]['name']),
    Text('${product[index]['price']}'),
    Row(children: [
      Text ('/${200}'),
      Text(product[index]['discount'])
    ],)

  
],),
),
);


      },);
  }


}