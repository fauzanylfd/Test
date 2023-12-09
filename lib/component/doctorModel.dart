import 'package:gopet/component/serviceModel.dart';

class doctorModel {
  String name;
  String image;
  List<String> services;
  int distance;

  doctorModel(
      {required this.name,
      required this.image,
      required this.services,
      required this.distance});
}

var doctors = [
  doctorModel(
      name: "Dr. Stone ",
      image: "assets/images/Dr.jpg",
      services: [Service.doctor],
      distance: 10),
  doctorModel(
      name: "Dr. Stone ",
      image: "assets/images/Dr.jpg",
      services: [Service.doctor],
      distance: 10),
  doctorModel(
      name: "Dr. Stone ",
      image: "assets/images/Dr.jpg",
      services: [Service.doctor ],
      distance: 10)
];