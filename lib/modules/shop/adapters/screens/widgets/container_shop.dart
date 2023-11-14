import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';

class ContainerShop extends StatelessWidget{
  final String title;
  final String description;
  final double initialRating;
  final String imageUri;
  const ContainerShop({super.key, required this.description, required this.title, required this.initialRating, required this.imageUri});

  @override
  Widget build(BuildContext context) {
    double widthImage = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Image.asset('assets/images/utez-logo.png',
              width: widthImage, height: 60, fit: BoxFit.contain),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                 SizedBox(
                  width: 64,
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
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
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                description,
                style: const TextStyle(color: Colors.black54, fontSize: 8),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, routeName)
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: ColorsApp.successColor,
              backgroundColor: Colors.white,
              side: const BorderSide(color: ColorsApp.successColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Text('Ver más'),
          )
        ],
      ),
    );
  }
}