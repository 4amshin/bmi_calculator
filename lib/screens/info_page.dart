import 'package:bmi_calculator/constant/constant.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _pare(
              title: 'Aplikasi',
              subTitle: "Kalkulator BMI",
            ),
            const SizedBox(height: 25),
            _pare(
              title: 'Versi',
              subTitle: "0.1",
            ),
            const SizedBox(height: 25),
            _pare(
              title: 'OS Wajib',
              subTitle: "Android 10.0 dan yang lebih baru",
            ),
            const SizedBox(height: 25),
            _pare(
              title: 'Standar',
              subTitle: "Mengikuti Standar BMI WHO",
            ),
            const SizedBox(height: 25),
            _pare(
              title: 'Creator',
              subTitle: "Rely Arfadillah",
            ),
            const SizedBox(height: 25),
            _pare1(
              title: 'Deskripsi Aplikasi',
              subTitle:
                  "Hitung dan evaluasi BMI Anda untuk menemukan berat badan ideal anda.",
              sub2Title:
                  'Dengan Kalkulator BMI ini Anda dapat menghitung dan mengevaluasi indeks massa tubuh anda (BMI) berdasarkan informasi yang relevan mengenai berat badan, tinggi badan, usia dan jenis kelamin',
            ),
          ],
        ),
      ),
    );
  }

  _appBar() {
    return AppBar(
      title: const Text(
        "Tentang Aplikasi",
        style: kTitleText,
      ),
      backgroundColor: kAppBackgroundColor,
    );
  }

  _pare({required String title, required String subTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: dTitleText,
        ),
        const SizedBox(height: 6),
        Text(
          subTitle,
          style: dSubTitleText,
        ),
      ],
    );
  }

  _pare1({
    required String title,
    required String subTitle,
    required String sub2Title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: dTitleText,
        ),
        const SizedBox(height: 6),
        Text(
          subTitle,
          style: d2SubTitleText,
        ),
        const SizedBox(height: 10),
        Text(
          sub2Title,
          style: d2SubTitleText,
        ),
      ],
    );
  }
}
