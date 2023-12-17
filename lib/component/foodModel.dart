import 'package:gopet/component/serviceModel.dart';

class PetFood {
  final String image;
  final String name;
  final double price;  // Ubah tipe data menjadi double
  final double discountPrice;  // Ubah tipe data menjadi double
  bool isFavorite;

  PetFood({
    required this.image,
    required this.name,
    required this.price,
    required this.discountPrice,
    this.isFavorite = false, 
  });
 set favorite(bool value) {
    isFavorite = value;
  }
}

List<PetFood> petFoods = [
  PetFood(
    image:"assets/images/Rectangle 45.png" ,
    name: 'Makanan Hewan A',
    price: 50000.0,  // Ubah nilai menjadi double
    discountPrice: 45000.0,  // Ubah nilai menjadi double
  ),
  PetFood(
    image:"assets/images/Rectangle 49.png" ,
    name: 'Makanan Hewan B',
    price: 60000.0,  // Ubah nilai menjadi double
    discountPrice: 55000.0,  // Ubah nilai menjadi double
  ),
  PetFood(
    image:"assets/images/Rectangle 52.png" ,
    name: 'Makanan Hewan C',
    price: 70000.0,  // Ubah nilai menjadi double
    discountPrice: 65000.0,  // Ubah nilai menjadi double
  ),
];

