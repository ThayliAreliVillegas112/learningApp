import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';

class ContainerShop extends StatelessWidget{
  const ContainerShop({super.key});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Image.asset('assets/images/utez-logo.png', width: widthImage, 
          height: 60,
          fit: BoxFit.fitWidth,),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 60,
                  child: Text('Iphone 15 pro max', 
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.topLeft,
                  child: RatingBar.builder(
                    initialRating: 3,
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
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.topLeft, child: Text('Nuevo  Iphone 15 pro max', style: TextStyle(color: Colors.black54, fontSize: 8),)),
          ),
          ElevatedButton(onPressed: (){}, 
            child: const Text('ver mas'), 
            style: OutlinedButton.styleFrom(
              foregroundColor: ColorsApp.successColor, 
              backgroundColor: Colors.white,
              side: const BorderSide(color: ColorsApp.successColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              )
            )
          )
        ],
      ),
    );
  }

}