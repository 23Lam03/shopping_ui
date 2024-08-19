// ignore_for_file: public_member_api_docs, sort_constructors_first
class SpecialModel {
  String name;
  String image;
  String price;
  SpecialModel({
    required this.name,
    required this.image,
    required this.price,
  });
}

List<SpecialModel> mockupSpecialData = [
  SpecialModel(
    name: 'Sate Kambing',
    image: 'assets/image/Paket Hemat Sate Kambing.png',
    price: '23.000 vnd',
  ),
  SpecialModel(
    name: 'Sate Ayam',
    image: 'assets/image/Paket Hemat Sate Ayam.png',
    price: '19.000 vnd ',
  ),
  SpecialModel(
    name: 'Sate Ayam',
    image: 'assets/image/Sate Kambing Pak Slamet.png',
    price: '19.000 vnd ',
  ),
];
