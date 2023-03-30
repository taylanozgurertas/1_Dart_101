/*
1
Dart mobil uygulama web uygulama ve daha fazlası için kullanılabilen güçlü bir arkasında google olan bir programlama dili.
State güncellemelerini kütüphane kullanmadan yapabilen bir dil vs.

*/

import 'package:deneme1/deneme1.dart' as deneme1;
import 'package:deneme1/hardwareandro.dart'; //sınıfımızı import ettik 25

void main() {
  //birkaç değişken tanımlayalım 2
  var val1 = "string1";
  String val2 = "string2,asdasdsd";
  //bu ikisi arasında fark yok var türü otomatik olarak belirlemeye yarıyor. kod okunaklı olsun istiyorsam string yaparım 3

  int _int1 = 1;
  var int1 = 1;
  int? x; //x defaultta null döner dartta böyledir. 4

  bool _bool = true;
  bool bools = false;
  bool? xBool; //xBool defaultta null döner 5

  print(val1);
  print(x);
  print(xBool);

  List<int> _list = [1,2,3]; //list tanımladık int değerler tutabilen bir list 6
  var list = ["asdsa",1]; //list tanımladık fakat listimiz dynamic oldu çünkü içinde hem string hem int değer var 7

  print("${list[0]} ${int1}"); //text içerisinde $ kullanarak bu şekilde değişkenleri gösterebiliyorum 8

  var _split = val2.split(","); //Stringlerin bir metodu olan split metodunu kullandım virgül görünce ayıracak ve ayırdığı her şeyi tek tek bir liste atacak
  //o listi de _split diye bir List değişkenine atayacak. 9

  print(_split.last); //şimdi de Listlerin bir metodu olan last yani sonuncu olan elemanı basıyorum
  var _toString = int1.toString(); //inti stringe çevirir 10


  //bir koşul yapıyorum 11
  if(_int1 > 0){
    print("okey");
  }else{
    print("false");
  }

  bool isOkey = _list.length > 0 ? true : false; //kısa koşul kullandım _list'in uzunluğu 0 dan büyükse true döndür değilse false döndür 12
  print(isOkey);

  //for yapısı yapayım 13

  for(var item in _list){ //_list'i gezecek ve tek tek her elemanı item e atayacak ve her bir atama yaptığında aşağıdaki kodları çalıştıracak 14
    print(item.toString());
  }

  for(var i=0; i<int1; i++) { //klasik for döngüsü, i nin başlangıç değeri, koşul, arttırma yöntemi 15
    print(i);
  }

  sum(5, 6); //18
  var total = _sum(4, 32);



  final _final1= DateTime.now();;
  //const _const1= DateTime.now();;
  /*
  23
  final ve const farkı nedir?
  compile time ve runtime evreleri vardır uygulamanın.
  compiletime derlemedir
  runtime ise başlatılma gibi düşünebilirim.
  final bir sabit tanımladığımızda bu runtime olduğu için şu anki zamanı uygulama başlatıldığında datetime.now ona atanır yani compile time süresince değeri değişebilir atayabiliyorum.
  fakat const ile tanımlanmış bir sabitte ise derleme sonrasında artık sabitlenir ve değeri değiştirilemez.
  ikisi de immutable dır. degistirilemez sabitler olarak gecerler.
   */

  var hwa1 = HardwareAndro("dart 101", "velibacik", 2); //sınıfımızdan bir nesne oluşturduk 26

  //default constructorımızı kullanarak bir nesne oluşturalım sınıfımızdan 32
  var hwa2 = HardwareAndro.MyConstructor("asdas");

  //
  hwa1.number=5;
  hwa1.change=15; //seti kullandık 37
  print(hwa1.number.toString()); //38
  print(hwa1.channel.toString()); //get i kullandık 39




}


//bir fonksiyon tanımlayalım 16
void sum(int val1, int val2){ //geriye değer döndürmeyen bir fonksiyon tanımladım 2 tane parametresi var bu fonksiyon kullanılırken bu parametreleri isteyecek 17
  print("result: ${val1+val2}");
}

int _sum(int val1, int val){ //geriye int değer döndüren bir fonksiyon oluşturduk yine 2 parametreli, int yazmasak da olurdu dartta sıkıntı olmuyor 19
  return val1+val; //döndürmek zorundayız eğer bu satırı yazmasaydık null döner 20
}

int sum3(int val1, [int? val2]){ //yine bir fonksiyon tanımladık bu sefer ikinci parametresi opsiyonel olsun yani fonksiyon kullanılırken bu parametre verilmese de olur 21
  return val1+val2!;
}

sum5(int val1, int val2) => val1+val2; //arrow function kullandık yani tek satırlık kodlar için 22








