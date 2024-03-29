import 'package:flutter/material.dart';
import 'package:learning_app_10a/config/navigation/home_stack.dart';
import 'package:learning_app_10a/config/navigation/news_stack.dart';
import 'package:learning_app_10a/kernel/widgets/navigation/bottom_navigation_tab.dart';
import 'package:learning_app_10a/modules/auth/adapters/screens/profile.dart';
//import 'package:learning_app_10a/modules/home/adapters/screens/home.dart';
import 'package:learning_app_10a/modules/shop/adapters/screens/shop.dart';

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex =0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [HomeStack(), Profile(), Shop(), NewsStack()],
      ),
      bottomNavigationBar: BottomNavigationTab(selectedIndex: _selectedIndex, onItemTapped:_onItemTapped ,),
    );
  }
}
