import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/widgets/navigation/menu.dart';
import 'package:learning_app_10a/kernel/widgets/splash/splash.dart';
import 'package:learning_app_10a/modules/shop/adapters/screens/detail_shop.dart';
import 'package:learning_app_10a/modules/shop/adapters/screens/shop_cart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quita la etiquet roja de "DEBUG" de las vistas
      initialRoute: '/',
      routes: {
        '/': (context)=> const Splash(title: "cargando..."),
        '/menu':(context) => const Menu(),
        '/shop/detail-shop':(context)=> const DetailShop(),
        '/shop/shop-cart':(context)=> const ShopCart(),
      },
    );
  } 
}

