import 'dart:io';

void main(List<String> args) {
  var currency = new createCurrenies(97.9353, 84.7998, 1.1824, 0.1973);
  currency.printCurrencyRate();
  currency.selectExchange();
}

class createCurrenies {
  double? eur;
  double? usd;
  double? rub;
  double? kzt;

  createCurrenies(this.eur, this.usd, this.rub, this.kzt);

  void printCurrencyRate() {
    print("Курс на сегодня: ");
    print("Евро $eur сом");
    print("Доллар сша $usd сом");
    print("Российский рубль $rub сом");
    print("Тенге $kzt сом");
  }

  void selectExchange() {
    print("1) Хотите обменять другую валюту на сом?");
    print("2) Хотите обменять сом на другую валюту?");

    print("Ввод:");
    String a = stdin.readLineSync()!;
    var amount = double.parse(a);
    if (amount == 2) {
      print("Выберите валюту");
      print("EUR");
      print("USD");
      print("RUB");
      print("KZT");
      var currency = stdin.readLineSync();
      if (currency == "EUR") {
        print("Сколько евро хотите купить?");
        print("Ввод:");
        String num = stdin.readLineSync()!;
        var Eur = int.parse(num);
        var finalEur = Eur * eur!;
        print("Обмен $finalEur сом на $Eur EUR");
      } else if (currency == "USD") {
        print("Сколько доллар хотите купить?");
        print("Ввод:");
        String num = stdin.readLineSync()!;
        var Usd = int.parse(num);
        var finalUsd = Usd * usd!;
        print("Обмен $finalUsd сом на $Usd USD");
      } else if (currency == "RUB") {
        print("Сколько рублей хотите купить?");
        print("Ввод:");
        String num = stdin.readLineSync()!;
        var Rub = int.parse(num);
        var finalRub = Rub * rub!;
        print("Обмен $finalRub сом на $Rub RUB");
      } else if (currency == "KZT") {
        print("Сколько тенге хотите купить?");
        print("Ввод:");
        String num = stdin.readLineSync()!;
        var Kzt = int.parse(num);
        var finalKzt = Kzt * kzt!;
        print("Обмен $finalKzt сом на $Kzt KZT");
      }
    } else if (amount == 1) {
      print("Выберите валюту");
      print("EUR");
      print("USD");
      print("RUB");
      print("KZT");
      var currency = stdin.readLineSync();
      if (currency == "EUR") {
        print("Сколько сом хотите купить?");
        print("Ввод:");
        String num = stdin.readLineSync()!;
        var Eur = int.parse(num);
        var finalEur = Eur / eur!;
        print("Обмен $finalEur EUR на $Eur SOM");
      } else if (currency == "USD") {
        print("Сколько сом хотите купить?");
        print("Ввод:");
        String num = stdin.readLineSync()!;
        var Usd = int.parse(num);
        var finalUsd = Usd / usd!;
        print("Обмен $finalUsd USD на $Usd SOM");
      } else if (currency == "RUB") {
        print("Сколько сом хотите купить?");
        print("Ввод:");
        String num = stdin.readLineSync()!;
        var Rub = int.parse(num);
        var finalRub = Rub / rub!;
        print("Обмен $finalRub RUB на $Rub SOM");
      } else if (currency == "KZT") {
        print("Сколько тенге хотите купить?");
        print("Ввод:");
        String num = stdin.readLineSync()!;
        var Kzt = int.parse(num);
        var finalKzt = Kzt / kzt!;
        print("Обмен $finalKzt KZT на $Kzt SOM");
      }
    }
  }
}
