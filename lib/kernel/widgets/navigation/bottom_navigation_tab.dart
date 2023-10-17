import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/theme/colors_app.dart';

class BottomNavigationTab extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onItemTapped;
  const BottomNavigationTab({super.key, required this.selectedIndex, required this.onItemTapped});



  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'perfil')
    ],
    currentIndex: selectedIndex, //contiene el indice en el cual se tiene en la lista
    selectedItemColor: ColorsApp.primaryColor,
    onTap: onItemTapped, //se ejecuta cada que el usuario da clic 
    );
  }

}