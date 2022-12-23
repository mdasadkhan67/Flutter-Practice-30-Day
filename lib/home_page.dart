import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:thirtyday/models/product_item.dart';
import 'package:thirtyday/widgets/drawer.dart';
import 'package:thirtyday/widgets/item_widget.dart';

//Something Learn About Context and Widget Render

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    Future.delayed(Duration(seconds: 2));
    final itemJson = await rootBundle.loadString("assets/files/items.json");

    final decodeditemJson = jsonDecode(itemJson);
    final jsonProductData = decodeditemJson["products"];
    CatalogPoductItems.productItem =
        List.from(jsonProductData).map<ProductItem>((productItem) {
      return ProductItem.fromMap(productItem);
    }).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Catalog App",
        ),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogPoductItems.productItem != null &&
                CatalogPoductItems.productItem.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogPoductItems.productItem.length,
                itemBuilder: (context, index) => ItemWidget(
                    productItem: CatalogPoductItems.productItem[index]),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
