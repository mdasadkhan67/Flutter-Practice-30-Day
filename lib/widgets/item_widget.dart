// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:thirtyday/models/product_item.dart';

class ItemWidget extends StatelessWidget {
  final ProductItem productItem;

  const ItemWidget({
    Key? key,
    required this.productItem,
  })  : assert(productItem != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(productItem.img),
        title: Text("${productItem.name}"),
        subtitle: Text("${productItem.id}"),
        trailing: Text("${productItem.price}"),
      ),
    );
  }
}
