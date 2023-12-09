import 'package:gopet/component/serviceModel.dart';

class PetFood {
  final String image;
  final String name;
  final String price;
  final String discountPrice;
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
    price: 'Rp 50.000',
    discountPrice: 'Rp 45.000',
  ),
  PetFood(
    image:"assets/images/Rectangle 49.png" ,
    name: 'Makanan Hewan B',
    price: 'Rp 60.000',
    discountPrice: 'Rp 55.000',
  ),
  PetFood(
    image:"assets/images/Rectangle 52.png" ,
    name: 'Makanan Hewan C',
    price: 'Rp 70.000',
    discountPrice: 'Rp 65.000',
  ),
];
