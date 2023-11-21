import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';

class ContainerShopCart extends StatelessWidget{
  const ContainerShopCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Image.asset('assets/images/sueter.png', width: 100, height: 100,),
            const SizedBox(width: 8,),
            const SizedBox(
              width: 160,
              child: Column(
                children: [
                  Text('iPhone 15 pro MAX', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  SizedBox(width: 8,),
                  Align(alignment: Alignment.topLeft,child: Text('\$22,000', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: ColorsApp.successColor),)),
                  Text('Nuevo iPhone pro max, descripcion ', style: TextStyle(color: Colors.black54, fontSize: 14),)
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: ElevatedButton(onPressed: (){},
              style: OutlinedButton.styleFrom(
              foregroundColor: Colors.red,
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.red),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ), child: const Text('Eliminar')
              ))
          ],
        ),
      ),
    );
  }
  

}