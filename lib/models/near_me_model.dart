// ignore_for_file: public_member_api_docs, sort_constructors_first
class NearMeModel {
  String name;
  String item;
  String image;
  String rp;
  String time;
  String evaluate;

  NearMeModel({
    required this.name,
    required this.image,
    required this.item,
    required this.rp,
    required this.time,
    required this.evaluate,
  });
}

List<NearMeModel> mockupNearMeData = [
  NearMeModel(
    name: 'Bubur Ayam Pak Yono',
    image: 'assets/image/Bubur Ayam Pak Yono.png',
    item: 'Porridge, Rice, Chicken,',
    rp: 'Rp 10.000',
    time: '12 min • 1 km',
    evaluate: '4.9 • 400+ ratings',
  ),
  NearMeModel(
    name: 'Sate Kambing Pak Slamet',
    image: 'assets/image/Sate Kambing Pak Slamet.png',
    item: 'Satai, Chicken, Meat',
    rp: 'Rp 10.000',
    time: '12 min • 1.2 km',
    evaluate: '4.7 • 200+ ratings',
  ),
  NearMeModel(
    name: 'Bakmi Ayam Bangka 78',
    image: 'assets/image/Bakmi Ayam Bangka.png',
    item: 'Noodle, Chicken',
    rp: 'Rp 10.000',
    time: '12 min • 1 km',
    evaluate: '4.9 • 150+ ratings',
  ),
];
