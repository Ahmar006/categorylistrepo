import 'package:app/model/product.dart';
import 'package:app/screen/avaiable.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      centerTitle: true,
      backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.shade100
                ),
                child: Image.asset(product.image,fit: BoxFit.cover,),
              ),
            ],
          ),
          SizedBox(height: 36,),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
Text(product.name.toUpperCase(),style: TextStyle(
  fontSize: 26,fontWeight: FontWeight.bold
),),
   Text('\$''${product.price}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(height: 14,),
                  Text(product.description,textAlign: TextAlign.justify,style: TextStyle(fontSize: 14),),
                  SizedBox(height: 10,),
                    Row(
            children: [
              Text('Avaibale Size',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ], 
          ),
          SizedBox(height: 8.0,),
          Row(children: [
            Avaibalescreen(size: 'US 6'),
              Avaibalescreen(size: 'US 7'),
                Avaibalescreen(size: 'US 8'),
                  Avaibalescreen(size: 'US 9'),
          ],)
              ],
              
            ),
          ),
       
        
        ],
      ),
      bottomSheet:  BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          width: double.infinity,
          height: MediaQuery.of(context).size.height/10,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10,)
            )
          ),
          child: Row(
            children: [
              
          Text('\$''${product.price}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(width: 100,),
          ElevatedButton.icon(
            // style: ButtonStyle(),
            onPressed: () {
            
          }, icon: Icon(Icons.send), label: Text('Add to cart'))
            ],
          ),
        ),
      ),
    );
  }
}