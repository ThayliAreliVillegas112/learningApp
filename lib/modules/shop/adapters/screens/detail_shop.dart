import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';

class DetailShop extends StatelessWidget{
  const DetailShop({super.key});

  @override
  Widget build(BuildContext context) {
    final dynamic rawArguments = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic>arguments = (rawArguments as Map<String, dynamic>?) ?? {};
    final title = arguments['title'] ?? '';
    final description = arguments['description'] ?? '';
    final initialRating = arguments['initialRating'] ?? 0.0;
    final imageUri = arguments['imageUri'] ?? 'assets/images/utez-logo.png';
    final price = arguments['price'] ?? 0.0;
    double widthImage = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: ColorsApp.primaryColor, foregroundColor: Colors.white,),
      body: Column(
        children: [
          
          Image.asset(imageUri, width: widthImage, height:120, fit: BoxFit.fitWidth),
          const SizedBox(
            height: 8,
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                  width: 120,
                  child: Text(
                    title, 
                    style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold
                    ),
                  )
                ),
                const Spacer(),
                Column(
                  children: [
                    Text('\$ $price'),
                    RatingBar.builder(
                      initialRating: initialRating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 8,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      updateOnDrag: false,
                      onRatingUpdate: (double value) {},
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description, 
            style: const TextStyle(
              fontSize: 12, color: Colors.black45
            ),
          ),
          ElevatedButton(onPressed: (){}, child: const Text('Agregar al carrito'),
          style: OutlinedButton.styleFrom(
              foregroundColor: ColorsApp.successColor,
              backgroundColor: Colors.white,
              side: const BorderSide(color: ColorsApp.successColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),),
            //AQUI ME FALTA ALGO
        ],
      ),
    );
  }

}