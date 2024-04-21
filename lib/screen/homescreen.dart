import 'package:app/model/myproduct.dart';
import 'package:app/screen/detailscreen.dart';
import 'package:app/screen/productcard.dart';
import 'package:flutter/material.dart';

 
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int isSelected= 0;
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Text('Our Products',style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
        Row(
          children: [
_bulidProductCategory(index: 0,name: 'All Products'),
_bulidProductCategory(index: 1, name: 'Jacket'),
_bulidProductCategory(index:2, name: 'Sneakers'),
          ],
        ),
        SizedBox(height: 20,),
        Expanded(child:isSelected==0? _bulidAllProducts():isSelected==1? _bulidjacket():_bulidsneaker(),)
      ],
      ),
    );
}
_bulidProductCategory({required int index,required String name}) => GestureDetector(
  onTap: () => setState(()=> isSelected= index),
  child: Container(
    
    width: 100,
    height: 40,
    margin: EdgeInsets.only(top: 10,right: 10),
    alignment: Alignment.center,
    decoration: BoxDecoration(
     color : isSelected == index ?Colors.red:Colors.red.shade300,
      borderRadius: BorderRadius.circular(8),
      
    ),
    child: Text(name,style: TextStyle(color: Colors.white),),
  ),
);

_bulidAllProducts() => GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  childAspectRatio: (100/140),
  crossAxisSpacing: 12,
  mainAxisSpacing: 12,
), scrollDirection: Axis.vertical,
itemCount: MyProducts.allProducts.length,
itemBuilder: (context, index) {
  final allProducts=MyProducts.allProducts[index];
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailsScreen(product: allProducts);
      },));
    },
    child: ProductCard(product: allProducts,));
},
);
_bulidjacket()=> GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  childAspectRatio: (100/140),
  crossAxisSpacing: 12,
  mainAxisSpacing: 12,
), scrollDirection: Axis.vertical,
itemCount: MyProducts.jacketList.length, itemBuilder:(context, index) {
  final jacketList =MyProducts.jacketList[index];
  return GestureDetector(
    onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailsScreen(product: jacketList);
      },));
    },
    child: ProductCard(product: jacketList));
}, );
_bulidsneaker()=> GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  childAspectRatio: (100/140),
  crossAxisSpacing: 12,
  mainAxisSpacing: 12,
), scrollDirection: Axis.vertical,
itemCount: MyProducts.sneakerList.length, itemBuilder:(context, index) {
  final sneakerList =MyProducts.sneakerList[index];
  return GestureDetector(
    onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailsScreen(product: sneakerList);
      },));
    },
    child: ProductCard(product:sneakerList ));
}, );
  }