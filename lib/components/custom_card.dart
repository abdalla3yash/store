import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/update_product_page.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  ProductModel product;

  CustomCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          height: 130,
          width: 220,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 0,
              offset: const Offset(10, 10),
            )
          ]),
          child: Card(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title.substring(0, 9),
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r'$' '${product.price.toString()}',
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const Icon(
                      Icons.star_half_rounded,
                      color: Colors.amber,
                    )
                  ],
                )
              ],
            ),
          )),
        ),
        Positioned(
          child: Image.network(product.image, height: 100),
          right: 32,
          bottom: 85,
        )
      ]),
    );
  }
}
