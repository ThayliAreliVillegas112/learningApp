import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';
import 'package:learning_app_10a/modules/shop/adapters/screens/widgets/container_shop.dart';

class Shop extends StatelessWidget{
  const Shop({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item = {
    'title':'Iphone 10',
    'description': 'Nuevo Iphone 10 con pantalla tactl de retina',
    'initialRating': 4.5,
    'imageUri': 'assets/images/utez-logo.png',
    'price': 8000.00
    };
    final Map<String, dynamic> item2 = {
    'title':'Sueter cool',
    'description': 'Sueter gris para el frio de tu corazón',
    'initialRating': 4.0,
    'imageUri': 'assets/images/iphone1.jpg',
    'price': 350.80
    };
    final List items = [item, item2];
    return  Scaffold(
      appBar: AppBar(title: const Text('Tienda de halcón'),
      backgroundColor: ColorsApp.primaryColor,
      foregroundColor: Colors.white,
      actions:[
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/shop/shop-cart');
          },
          child: Container(
            width: 60,
            height: 60,
            margin: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color:  Colors.transparent,
            ),
            child: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        )
      ],
      ),
      
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 2,
        mainAxisSpacing: 16,
        crossAxisCount: 2,
        children: List.generate(items.length, (index) {
          return ContainerShop(
            title: items[index]['title'], 
            description: items[index]['description'], 
            initialRating: items[index]['initialRating'], 
            imageUri: items[index]['imageUri'], 
            price: items[index]['price']
          );
        })
      ),
    );
  }
  
}