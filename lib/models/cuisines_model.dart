// ignore_for_file: public_member_api_docs, sort_constructors_first
class CuisinesModel {
  String name;
  String image;
  CuisinesModel({
    required this.name,
    required this.image,
  });
}

List<CuisinesModel> mockupCuisinesModel = [
  CuisinesModel(name: 'Chicken', image: 'assets/image/Chicken.png'),
  CuisinesModel(name: 'Burger', image: 'assets/image/Burger.png'),
  CuisinesModel(name: 'Pizza', image: 'assets/image/Pizza.png'),
  CuisinesModel(name: 'Bakery', image: 'assets/image/Bakery.png'),
  CuisinesModel(name: 'Salad', image: 'assets/image/Salad.png')
];
