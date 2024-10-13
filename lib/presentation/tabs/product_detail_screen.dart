import 'package:dummyjson_calling/domain/model_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.black12,
                image: DecorationImage(
                  image: NetworkImage(
                    product.images.isNotEmpty
                        ? product.images[0]
                        : product.thumbnail,
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(product.title,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ),
        Row(
          children: [
            Text(product.rating.toString()),
            Text(product.brand),
            Text(product.reviews[0].rating.toString()),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Price: \$${product.price}',
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            product.description,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.star, color: Colors.yellow[700]),
              Text(
                '${product.rating} (${product.stock} left)',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Category: ${product.category}',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Brand: ${product.brand}',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'SKU: ${product.sku}',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Dimensions: ${product.dimensions.width} x ${product.dimensions.height} x ${product.dimensions.depth} cm',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Weight: ${product.weight} kg',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Warranty: ${product.warrantyInformation}',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Shipping Info: ${product.shippingInformation}',
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Availability Status: ${product.availabilityStatus}',
            style: TextStyle(
                fontSize: 16,
                color: product.availabilityStatus == "Low Stock"
                    ? Colors.red
                    : Colors.green),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Return Policy: ${product.returnPolicy}',
            style: const TextStyle(fontSize: 16),
          ),
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Minimum Order Quantity: ${product.minimumOrderQuantity}',
                style: const TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
