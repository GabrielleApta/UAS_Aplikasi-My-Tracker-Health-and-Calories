import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(BMR());
}

class BMR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menghitung BMR',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: BmrHomePage(),
    );
  }
}

class BmrHomePage extends StatefulWidget {
  @override
  _BmrHomePageState createState() => _BmrHomePageState();
}

class _BmrHomePageState extends State<BmrHomePage> {
  TextEditingController beratBadanController = TextEditingController();
  TextEditingController tinggiBadanController = TextEditingController();
  TextEditingController usiaController = TextEditingController();
  String selectedJenisKelamin = '';
  String resultBMR = '';

  void hitungBMR() {
    double a1, b1, a2, a3;

    switch (selectedJenisKelamin.toLowerCase()) {
      case "wanita":
        a1 = 665.0;
        b1 = 9.6;
        a2 = 1.8;
        a3 = 4.7;
        break;
      case "laki-laki":
        a1 = 66.0;
        b1 = 13.7;
        a2 = 5.0;
        a3 = 6.8;
        break;
      default:
        setState(() {
          resultBMR = "Input tidak valid.";
        });
        return;
    }

    int beratBadan = int.tryParse(beratBadanController.text) ?? 0;
    int tinggiBadan = int.tryParse(tinggiBadanController.text) ?? 0;
    int usia = int.tryParse(usiaController.text) ?? 0;

    double BMR = a1 + b1 * beratBadan + a2 * tinggiBadan - a3 * usia;
    resultBMR = "Hasil Perhitungan BMR: " + BMR.toStringAsFixed(2) + " Kalori\n";

    double BMRsedentary = BMR * 1.2;
    double BMRlightly = BMR * 1.375;
    double BMRmoderately = BMR * 1.55;
    double BMRvery = BMR * 1.725;
    double BMRextra = BMR * 1.9;

    resultBMR += "Tingkat Aktivitas Sedentary: " + BMRsedentary.toStringAsFixed(2) + " Kalori\n";
    resultBMR += "Tingkat Aktivitas Lightly Active: " + BMRlightly.toStringAsFixed(2) + " Kalori\n";
    resultBMR += "Tingkat Aktivitas Moderately Active: " + BMRmoderately.toStringAsFixed(2) + " Kalori\n";
    resultBMR += "Tingkat Aktivitas Very Active: " + BMRvery.toStringAsFixed(2) + " Kalori\n";
    resultBMR += "Tingkat Aktivitas Extra Active: " + BMRextra.toStringAsFixed(2) + " Kalori";

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hitung BMR',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          Center(
              child: Icon(Icons.calculate, size: 75),
            ),
            Text('Pilih Jenis Kelamin'),
            DropdownButton<String>(
              value: selectedJenisKelamin,
              onChanged: (String? newValue) {
                setState(() {
                  selectedJenisKelamin = newValue!;
                });
              },
              items: <String>['', 'wanita', 'laki-laki'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text('Pilih Jenis Kelamin'),
            ),
            TextField(
              controller: beratBadanController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(labelText: 'Berat Badan (KG)'),
            ),
            TextField(
              controller: tinggiBadanController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(labelText: 'Tinggi Badan (CM)'),
            ),
            TextField(
              controller: usiaController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(labelText: 'Usia (Tahun)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungBMR,
              child: Text('Hitung BMR'),
            ),
            SizedBox(height: 50,),
            Text(resultBMR),
          ],
        ),
      ),
    );
  }
}
