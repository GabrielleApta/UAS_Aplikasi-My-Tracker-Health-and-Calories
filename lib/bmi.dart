import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menghitung BMI',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController beratController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();
  TextEditingController usiaController = TextEditingController();
  String resultBMI = '';

  void hitungBMI() {
    double beratBadan = double.parse(beratController.text);
    double tinggiBadanCM = double.parse(tinggiController.text);
    double tinggiBadanM = tinggiBadanCM / 100.0;
    int usia = int.parse(usiaController.text);

    double BMI = beratBadan / (tinggiBadanM * tinggiBadanM);
    setState(() {
      resultBMI = 'BMI Anda adalah: ${BMI.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hitung BMI',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            Center(
              child: Icon(Icons.fitness_center, size: 75),
            ),
            TextField(
              controller: beratController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(labelText: 'Berat Badan (KG)'),
            ),
            TextField(
              controller: tinggiController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(labelText: 'Tinggi Badan (CM)'),
            ),
            TextField(
              controller: usiaController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(labelText: 'Usia (Tahun)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungBMI,
              child: Text('Hitung BMI'),
            ),
            SizedBox(height: 50),
            Text(resultBMI),
          ],
        ),
      ),
    );
  }
}
