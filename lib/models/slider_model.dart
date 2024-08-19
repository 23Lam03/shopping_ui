// ignore_for_file: public_member_api_docs, sort_constructors_first
class SliderModel {
  String name;
  String image;
  SliderModel({
    required this.name,
    required this.image,
  });
}

List<SliderModel> mockupSliderData = [
  SliderModel(name: 'Near Me', image: 'assets/image/NearMe.png'),
  SliderModel(name: 'Big Promo', image: 'assets/image/BigPromo.png'),
  SliderModel(name: 'Best Seller', image: 'assets/image/BestSeller.png'),
  SliderModel(name: 'Budget Meal', image: 'assets/image/BudgetMeal.png'),
  SliderModel(name: 'Healthy Food', image: 'assets/image/HealthyFood.png'),
  SliderModel(name: 'Open 24 Hours', image: 'assets/image/Open24Hours.png'),
  SliderModel(
      name: 'Popular Restaurant', image: 'assets/image/PopularRestaurant.png'),
  SliderModel(name: 'More', image: 'assets/image/More.png'),
];
