import 'package:flutter/material.dart';
import 'package:learning_app_10a/kernel/widgets/navigation/bottom_navigation_tab.dart';
import 'package:learning_app_10a/kernel/widgets/splash/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=> const Splash(title: "cargando..."),
        '/menu':(context) => const Menu(),
      },
    );
  } 
}

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex =0;
  void _onItemTapped(int index){

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const Center(child: Text('Menu'),),
      bottomNavigationBar: BottomNavigationTab(selectedIndex: _selectedIndex, onItemTapped:_onItemTapped ,),
    );
  }
}
