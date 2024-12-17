import 'package:flutter/material.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {

  static const List<Widget> _widgetOptions = [

    
  ];

  @override
  Widget build(BuildContext context) {
    const styles = TextStyle(color: Colors.white, fontFamily: "Blacker Sans");
    int _selectedItem = 0;

    return Scaffold(
      backgroundColor: Color.fromRGBO(79, 188, 202, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(4, 35, 69, 1.0),
        title: const Center(
          child: Text("FilmData", style: styles),
        ),
      ),
      bottomNavigationBar: ,
    );
  }
}
