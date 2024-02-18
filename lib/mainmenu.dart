import 'package:flutter/material.dart';
import 'bmi.dart';
import 'bmr.dart';
import 'nutrisi.dart';
import 'hitungkalorimakanan.dart';

void main() {
  runApp(MainMenu());
}

class MainMenu extends StatefulWidget {
  final String? username; // Jadikan username menjadi opsional dengan tanda tanya (?)

  MainMenu({Key? key, this.username}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [
    BMR(),
    BMI(),
    HitungKaloriMakanan(),
    Nutrisi(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Trackers Health',style: TextStyle(fontSize: 16),),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: Center(
        child: _pages[_selectedIndex],
      ),
      backgroundColor: Colors.black54,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'BMR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            label: 'Menghitung Nutrisi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Daftar Kalori',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.blueGrey,
        onTap: _onItemTapped,
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}

