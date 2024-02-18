import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(HitungKaloriMakanan());
}

class HitungKaloriMakanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menghitung Kalori Makanan',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: KaloriMakananHomePage(),
    );
  }
}

class KaloriMakananHomePage extends StatefulWidget {
  @override
  _KaloriMakananHomePageState createState() => _KaloriMakananHomePageState();
}

class _KaloriMakananHomePageState extends State<KaloriMakananHomePage> {
  TextEditingController makananController = TextEditingController();
  TextEditingController beratMakananController = TextEditingController();
  String resultInfoGizi = '';

  void hitungInfoGizi() {
    String makanan = makananController.text.toLowerCase();
    double kaloriPerGram, proteinPerGram, karbohidratPerGram, lemakPerGram;

    switch (makanan) {
      case "dada ayam":
        kaloriPerGram = 1.95;
        proteinPerGram = 0.3;
        karbohidratPerGram = 0.0;
        lemakPerGram = 0.08;
        break;
      case "wortel":
        kaloriPerGram = 0.41;
        proteinPerGram = 0.0093;
        karbohidratPerGram = 0.0958;
        lemakPerGram = 0.0024;
        break;
      case "dada ayam tanpa kulit dan tulang dengan dikukus":
        kaloriPerGram = 1.45;
        proteinPerGram = 0.29;
        karbohidratPerGram = 0.0858;
        lemakPerGram = 0.03;
        break;
      case "bayam":
        kaloriPerGram = 0.23;
        proteinPerGram = 0.0286;
        karbohidratPerGram = 0.0363;
        lemakPerGram = 0.0039;
        break;
      case "udang":
        kaloriPerGram = 1.44;
        proteinPerGram = 0.2759;
        karbohidratPerGram = 0.0124;
        lemakPerGram = 0.0235;
        break;
      case"nasi putih":
        kaloriPerGram = 1.29;
        proteinPerGram = 0.0266;
        karbohidratPerGram = 0.279;
        lemakPerGram = 0.0028;
        break;
      case"nasi merah":
        kaloriPerGram=1.1;
        proteinPerGram=0.0256;
        karbohidratPerGram= 0.2278;
        lemakPerGram=0.0089;
      case"ikan kembung":
        kaloriPerGram=1.67;
        proteinPerGram=0.0256;
        karbohidratPerGram= 0;
        lemakPerGram=0.0936;
      case"ikan tongkol goreng":
        kaloriPerGram=2;
        proteinPerGram=0.2095;
        karbohidratPerGram= 0.0238;
        lemakPerGram=0.1141;
      case"keju cheddar":
        kaloriPerGram=4.03;
        proteinPerGram=0.249;
        karbohidratPerGram= 0.0128;
        lemakPerGram=0.3314;
      case"tahu":
        kaloriPerGram=0.78;
        proteinPerGram=0.0797;
        karbohidratPerGram= 0.021;
        lemakPerGram=0.0495;
      case"tahu goreng":
        kaloriPerGram=2.71;
        proteinPerGram=0.1719;
        karbohidratPerGram= 0.1049;
        lemakPerGram=0.2018;
      case"piscok":
        kaloriPerGram=2.98;
        proteinPerGram=0.3727;
        karbohidratPerGram= 0.3727;
        lemakPerGram=0.1429;
      case"daging babi panggang":
        kaloriPerGram=2.47;
        proteinPerGram=0.3727;
        karbohidratPerGram= 0;
        lemakPerGram=0.1459;
      case"good day cappuccino":
        kaloriPerGram=4.4;
        proteinPerGram=0.04;
        karbohidratPerGram= 0.84;
        lemakPerGram=0.1;
      case"good day carrebian nut":
        kaloriPerGram=4.5;
        proteinPerGram=0.05;
        karbohidratPerGram= 0.8;
        lemakPerGram=0.125;
      case"rendang sapi":
        kaloriPerGram=1.95 ;
        proteinPerGram=0.1968;
        karbohidratPerGram= 0.0449;
        lemakPerGram= 0.1107;
      case"sate padang":
        kaloriPerGram=1.61  ;
        proteinPerGram=0.1801;
        karbohidratPerGram= 0.0679;
        lemakPerGram= 0.0663;
      case"donat jco":
        kaloriPerGram=5 ;
        proteinPerGram=0.054;
        karbohidratPerGram= 0.6888;
        lemakPerGram=  0.2388;
      case"kulit ayam":
        kaloriPerGram=4.54 ;
        proteinPerGram= 0.2036;
        karbohidratPerGram= 0;
        lemakPerGram= 0.4068;
      case"ubi ungu rebus":
        kaloriPerGram=0.82 ;
        proteinPerGram= 0.0236 ;
        karbohidratPerGram=0.1826;
        lemakPerGram=  0.0005 ;
      case"mcflurry oreo":
        kaloriPerGram =1.82;
        proteinPerGram=0.0421;
        karbohidratPerGram=0.2807;
        lemakPerGram=0.059;
      case"lotte choco pie":
        kaloriPerGram =4.23;
        proteinPerGram=0.692;
        karbohidratPerGram=0.2807;
        lemakPerGram=0.153;
      case"ikan tuna":
        kaloriPerGram =1.08;
        proteinPerGram=0.2338;
        karbohidratPerGram=0;
        lemakPerGram=0.0095;
      case"ikan nila":
        kaloriPerGram =0.96;
        proteinPerGram=0.2008;
        karbohidratPerGram=0;
        lemakPerGram=0.017;
      case"ikan mujair goreng":
        kaloriPerGram =1.69;
        proteinPerGram=0.2455;
        karbohidratPerGram=0.0222;
        lemakPerGram=0.0692;
      case"permen coklat susu":
        kaloriPerGram =5.35;
        proteinPerGram=0.0765;
        karbohidratPerGram=0.594;
        lemakPerGram=0.2966;
      case"es krim":
        kaloriPerGram =2.01;
        proteinPerGram=0.0352;
        karbohidratPerGram=0.244;
        lemakPerGram=0.1072;
      case"pai apel":
        kaloriPerGram =2.65;
        proteinPerGram=0.024;
        karbohidratPerGram=0.371;
        lemakPerGram=0.125;
      case"kotak jus":
        kaloriPerGram =0.49;
        proteinPerGram=0.00065;
        karbohidratPerGram=0.12205;
        lemakPerGram=0.00115;
      case"country choice apple juice":
        kaloriPerGram =0.64;
        proteinPerGram=0;
        karbohidratPerGram=0.164;
        lemakPerGram=0;
      case"buavita jus apel":
        kaloriPerGram =0.48;
        proteinPerGram=0;
        karbohidratPerGram=0.12;
        lemakPerGram=0;
      case"kari ayam":
        kaloriPerGram =1.2372;
        proteinPerGram=0.1146;
        karbohidratPerGram=0.0474;
        lemakPerGram=0.0667;
      case"daging bebek":
        kaloriPerGram =1.32;
        proteinPerGram=0.1828;
        karbohidratPerGram=0;
        lemakPerGram=0.0595;
      case"soto daging":
        kaloriPerGram =0.9087;
        proteinPerGram=0.0757;
        karbohidratPerGram=0.0446;
        lemakPerGram=0.04775;
      case"good day freeze":
        kaloriPerGram =4.33;
        proteinPerGram=0.033;
        karbohidratPerGram=0.8333;
        lemakPerGram=0.1166;
      case"batagor":
        kaloriPerGram =2.9;
        proteinPerGram=0.1028;
        karbohidratPerGram=0.2914;
        lemakPerGram=0.1492;
      case"kue sus":
        kaloriPerGram =2.6;
        proteinPerGram=0.0654;
        karbohidratPerGram=0.2354;
        lemakPerGram=0.156;
      case"kue lapis":
        kaloriPerGram =4.02;
        proteinPerGram=0.0504;
        karbohidratPerGram=0.4578;
        lemakPerGram=0.2252;
      case"telur rebus":
        kaloriPerGram =1.54;
        proteinPerGram=0.1252;
        karbohidratPerGram=0.0112;
        lemakPerGram=0.1056;
      case"kentang rebus":
        kaloriPerGram =0.87;
        proteinPerGram=0.0187;
        karbohidratPerGram=0.2013;
        lemakPerGram=0.001;
      case"kentang goreng":
        kaloriPerGram =2.7;
        proteinPerGram=0.0348;
        karbohidratPerGram=0.3565;
        lemakPerGram=0.1405;
      case"seblak":
        kaloriPerGram =1.31;
        proteinPerGram=0.0407;
        karbohidratPerGram=0.1557;
        lemakPerGram=0.06655;
      case"cilok":
        kaloriPerGram =2.65;
        proteinPerGram=0.02441;
        karbohidratPerGram=0.5817;
        lemakPerGram=0.02575;
      case"popcorn":
        kaloriPerGram =3.87;
        proteinPerGram=0.1294;
        karbohidratPerGram=0.7778;
        lemakPerGram=0.0454;
      default:
        setState(() {
          resultInfoGizi = "Makanan tidak ditemukan.";
        });
        return;
    }

    int beratMakanan = int.parse(beratMakananController.text);
    double hasilKalori = beratMakanan * kaloriPerGram;
    double hasilProtein = beratMakanan * proteinPerGram;
    double hasilKarbohidrat = beratMakanan * karbohidratPerGram;
    double hasilLemak = beratMakanan * lemakPerGram;

    setState(() {
      resultInfoGizi = "===== Informasi Gizi =====\n" +
          "Makanan: $makanan\n" +
          "Berat: $beratMakanan gram\n" +
          "Kalori: ${hasilKalori.toStringAsFixed(1)} Kalori\n" +
          "Protein: ${hasilProtein.toStringAsFixed(1)} gram\n" +
          "Karbohidrat: ${hasilKarbohidrat.toStringAsFixed(1)} gram\n" +
          "Lemak: ${hasilLemak.toStringAsFixed(1)} gram";
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
              'Hitung Nutrisi Makanan',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            Center(
              child: Icon(Icons.local_dining, size: 75),
            ),
            TextField(
              controller: makananController,
              decoration: InputDecoration(labelText: 'Nama Makanan'),
            ),
            TextField(
              controller: beratMakananController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(labelText: 'Berat Makanan (gram)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungInfoGizi,
              child: Text('Hitung Informasi Gizi'),
            ),
            SizedBox(height: 50),
            Text(resultInfoGizi),
          ],
        ),
      ),
    );
  }
}
