import 'package:dummyjson_calling/presentation/tabs/home_screen/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../infra/Provider_service/provider.dart';
import '../product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<ApiProvider>(context, listen: false).callProduct();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Consumer<ApiProvider>(builder: (context, value, child) {
        return SingleChildScrollView(
          child:  Column(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisExtent: height * 0.31,
                    mainAxisSpacing: 8),

                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: value.productDetails.products.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                              product: value.productDetails.products[index]),
                        ),
                      );
                    },
                    child: ProductCard(
                      product: value.productDetails.products[index],
                    ),
                  );
                },

              ),
            ],
          ),
        );
      },),
    );
  }
}
