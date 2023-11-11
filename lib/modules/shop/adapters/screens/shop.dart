import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';
import 'package:learning_app_10a/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget{
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Tienda de halcón'),
      backgroundColor: ColorsApp.primaryColor,
      foregroundColor: Colors.white,),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 2,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: const <Widget>[
          ContainerShop(), ContainerShop(), ContainerShop()
        ]
      ),
    );
  }
  
}