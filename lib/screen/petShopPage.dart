import 'package:flutter/material.dart';

class PetFood {
  final String name;
  final String description;
  final String image;

  PetFood({required this.name, required this.description, required this.image});
}

class PetFoodSelectionPage extends StatefulWidget {
  @override
  _PetFoodSelectionPageState createState() => _PetFoodSelectionPageState();
}

class _PetFoodSelectionPageState extends State<PetFoodSelectionPage> {
  List<PetFood> petFoods = [
    PetFood(name: 'Dog Food', description: 'High quality dog food', image: 'assets/images/dog_food.jpg'),
    PetFood(name: 'Cat Food', description: 'Delicious cat food', image: 'assets/images/cat_food.jpg'),
    // Add more pet foods here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Pet Food'),
      ),
      body: ListView.builder(
        itemCount: petFoods.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(petFoods[index].image),
            title: Text(petFoods[index].name),
            subtitle: Text(petFoods[index].description),
            onTap: () {
              // Handle pet food selection
              print('Selected ${petFoods[index].name}');
            },
          );
        },
      ),
    );
  }
}
