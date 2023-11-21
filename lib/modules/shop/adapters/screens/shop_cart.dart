import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';
import 'package:learning_app_10a/modules/home/adapters/screens/widgets/container_shop_cart.dart';

class ShopCart extends StatelessWidget{
  const ShopCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de compras'),
        backgroundColor: ColorsApp.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
        child: ContainerShopCart(),
      ),
    );
  }


}