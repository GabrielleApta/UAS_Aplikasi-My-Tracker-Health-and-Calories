import 'package:flutter/material.dart';

void main() {
  runApp(Nutrisi());
}

class Nutrisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView( // Wrap with SingleChildScrollView
            child: Column(
              children: [
                SizedBox(height: 16.0),
                FoodItemCard(
                  name: 'Pisang',
                  calories: '78 kalori',
                  weight: '100 gram',
                ),
                SizedBox(height: 16.0),
                FoodItemCard(
                  name: 'Tahu Goreng',
                  calories: '271 kalori',
                  weight: '100 gram',
                ),
                SizedBox(height: 16.0),
                FoodItemCard(
                  name: 'Daging Slice',
                  calories: '143 kalori',
                  weight: '100 gram',
                ),
                SizedBox(height: 16.0),
                FoodItemCard(
                  name: 'Susu Sapi',
                  calories: '42 kalori',
                  weight: '100 gram',
                ),
                SizedBox(height: 16.0),
                FoodItemCard(
                  name: 'Ayam Goreng',
                  calories: '260 kalori',
                  weight: '100 gram',
                ),
                SizedBox(height: 16.0),
                FoodItemCard(
                  name: 'Durian',
                  calories: '147 kalori',
                  weight: '100 gram',
                ),
                SizedBox(height: 16.0),
                FoodItemCard(
                  name: 'Piscok',
                  calories: '298 kalori',
                  weight: '100 gram',
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class FoodItemCard extends StatelessWidget {
  final String name;
  final String calories;
  final String weight;

  FoodItemCard({
    required this.name,
    required this.calories,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3.0,
            blurRadius: 5.0,
            offset: const Offset(0, 3.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Kalori: $calories',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Berat: $weight',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}