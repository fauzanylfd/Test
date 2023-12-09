import 'package:gopet/component/serviceModel.dart';

class accessoriesModel {
  String name;
  String image;
  List<String> services;
  int distance;

  accessoriesModel(
      {required this.name,
      required this.image,
      required this.services,
      required this.distance});
}

var accessories = [
  accessoriesModel(
      name: "Kalung ",
      image: "assets/images/Dr. Stone.jpg",
      services: [Service.food],
      distance: 10),
  accessoriesModel(
      name: "Mainan ",
      image: "Dr. Stone.jpg",
      services: [Service.food],
      distance: 10),
  accessoriesModel(
      name: "Bola",
      image: "Dr. Stone.jpg",
      services: [Service.food ],
      distance: 10)
];