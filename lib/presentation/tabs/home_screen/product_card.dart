import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/model_class.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

  return Card(elevation: 4,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
       child: Image.network(
         product.images.isNotEmpty ? product.images[0] : product.thumbnail,
         height: height * 0.20,
         width: double.infinity,
         fit: BoxFit.contain,
       ),
      ),
      Text(product.title),
      Text(product.brand),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('\$${product.price}'),
          Text('⭐${product.rating}'),
        ],
      )
        ]),);
}}
