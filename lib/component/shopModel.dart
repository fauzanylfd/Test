import 'package:gopet/component/serviceModel.dart';

class petshopModel {
  String name;
  String image;
  List<String> services;
  List<String> petFoods; // Atribut baru untuk makanan hewan
  int distance;

  petshopModel({
    required this.name,
    required this.image,
    required this.services,
    required this.petFoods, // Parameter baru untuk makanan hewan
    required this.distance,
  });
}

var petshops = [
  petshopModel(
      name: "Petshop Purina ",
      image: "assets/images/image 1.png",
      services: [Service.petshop],
      petFoods: ["Makanan Kucing", "Makanan Anjing"], // Daftar makanan hewan,
      distance: 10),
  petshopModel(
      name: "Pet Shop Alaska ",
      image: "assets/images/Rectangle 27.png",
      services: [Service.petshop],
      petFoods: ["Makanan Kucing", "Makanan Anjing"], // Daftar makanan hewan,
      distance: 10),
  petshopModel(
      name: "Petshop Venus",
      image: "assets/images/Rectangle 29.png",
      services: [Service.petshop ],
      petFoods: ["Makanan Kucing", "Makanan Anjing"], // Daftar makanan hewan,
      distance: 10),
  petshopModel(
      name: "Petshop Jupiter",
      image: "assets/images/Rectangle 29.png",
      services: [Service.petshop ],
      petFoods: ["Makanan Kucing", "Makanan Anjing"], // Daftar makanan hewan,
      distance: 10),
 
];

