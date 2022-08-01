import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    this.height,
    this.weight,
  });

  final int? height;
  final int? weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      return "Obesitas Stadium 3";
    } else if (_bmi >= 35) {
      return "Obesitas Stadium 2";
    } else if (_bmi >= 30) {
      return "Obesitas Stadium 1";
    } else if (_bmi >= 25) {
      return "Kegemukan";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "Kurus";
    }
  }

  String getInterpretation() {
    if (_bmi >= 40) {
      return "Berat Badan anda mencapai Obesitas Stadium 3, Segera temui dokter.";
    } else if (_bmi >= 35) {
      return "Berat Badan anda mencapai Obesitas Stadium 2, Segera temui dokter.";
    } else if (_bmi >= 30) {
      return "Berat Badan anda mencapai Obesitas Stadium 1, Segera temui dokter.";
    } else if (_bmi >= 25) {
      return "Anda memiliki berat badan yang lebih tinggi dari biasanya. cobalah untuk lebih banyak berolahraga.";
    } else if (_bmi >= 18.5) {
      return "Selamat!!! Anda memiliki berat badan normal.";
    } else {
      return "Anda memiliki berat badan yang lebih rendah dari biasanya. Anda bisa makan sedikit lebih banyak.";
    }
  }
}
