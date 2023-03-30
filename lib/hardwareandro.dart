class HardwareAndro{ //bir sınıf tanımladık 24
  String? videoTitle;
  var author;
  int? number; //sınıfımıza özellikler koyduk bu şekilde
  //int _channel; //private olarak tanımladık yani deneme1.dart dosyasından bu özelliğe erişemeyeceğiz 33

  void set change(int value){ //set tanımladık 34
    /*
    çalışma mantığı basit bu sınıfın özelliklerine erişmek için güzel bir yöntem direkt olarak erişmek yerine change diyerek erişiyoruz
    yani nesne.change diyerek erişebiliyoruz burada set demek bir şeyi ata ayarla anlamında
    yani hwa1 nesnesi için set metodumuzu kullanırsak yani hwa1.change=15; denildiğinde hwa1 in numberına 15 atar 36
    */
    this.number = value;
  }

  int? get channel{ //get tanımladık 35
    //çalışma mantığı set ile aynı fakat burada get bir şeyi getirmek manasında
    //yani hwa1.get kullanıldığında hwa1.channel yapılırsa gidip hwa1 in numberını getirir 40
    //tabi buralarda get ve set kullanırken çeşitli şartlar vs kullanılıp çeşitlendirilebilir mevzu 41
    return this.number;
  }



  HardwareAndro(String videoTitle, var author, int number){ //28 klasik default constructor oluşturduk
    //yani constructor demek bu sınıftan nesne üretildiğinde bu constructor fonksiyonu çalışır. 3 parametre isteyecek
    this.videoTitle = videoTitle;
    this.author = author;
    this.number = number; //aldığı bu parametreleri oluşturduğu nesnenin özelliklerine yani bu sınıfın (this) özelliklerine atar 29


    /*
    * bunu daha kısa yapmak için parametre kısmına direkt olarak this.videoTitle, this.author, this.number yazsak alttaki eşitlemeleri yapmaya gerek kalmazdı 30
    * */
  }

  HardwareAndro.MyConstructor(String videoTitle){ //bir tane daha constructor oluşturduk fakat bu özel yani bunu isimlendirdik myconsturctor diye 31
    this.videoTitle = videoTitle.length.toString();
  }





}