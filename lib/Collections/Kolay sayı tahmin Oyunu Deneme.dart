import 'dart:io';
import 'dart:math';

void main(){
  print("Bir sayı tuttum 1'den 10'a kadar\nTahmin et :)");
  int girdi;
  int hak = 3;
  var rastgeleSayi= 0;
  for (var i = 0; i < 1; i++) {
    rastgeleSayi = Random().nextInt(11);
  }
  while(true){
    if(hak == 0){
      print("Deneme hakkınız kalmadı :(\nTuttuğum Sayı : $rastgeleSayi");
      break;
    }
    else{
      print("Tahmininizi Giriniz : ");
      var girdi = int.parse(stdin.readLineSync());
      if(girdi<rastgeleSayi){
        print("Tahmininizi Yükseltin :(");
        hak -= 1;
        print("1 hakkınızı kaybettiniz\nKalan hak: $hak");
        continue;
      }
      if(girdi>rastgeleSayi){
        print("Tahmininizi Düşürün :(");
        hak -= 1;
        print("1 hakkınızı kaybettiniz\nKalan hak: $hak");
        continue;
      }else{
        print("Tebrikler\nDoğru Tahmin :)");
      }
    }
  }
}