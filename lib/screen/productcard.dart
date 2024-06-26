import 'package:flutter/material.dart';

import '../model/product.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key,required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(0.1)

      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.favorite_border_outlined,color: Colors.red,),
            ],
          ),
          SizedBox(height: 130,
          width: 130,
          child: Image.asset(widget.product.image,
          fit: BoxFit.cover,
          ),
          ),
          Text(widget.product.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          Text(widget.product.category,style: TextStyle(fontSize: 14,color: Colors.red),),
          Text('\$''${widget.product.price}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}