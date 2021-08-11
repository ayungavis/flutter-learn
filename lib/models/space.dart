class Space {
  int id = 0;
  String name = 'John Dow';
  String imageUrl = '';
  int price = 0;
  String city = '';
  String country = '';
  int rating = 0;
  String address = '';
  String phone = '';
  String mapUrl = '';
  List photos = [];
  int numberOfKitchens = 0;
  int numberOfBedrooms = 0;
  int numerOfCupboards = 0;

  Space(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.city,
      required this.country,
      required this.rating,
      required this.address,
      required this.phone,
      required this.mapUrl,
      required this.photos,
      required this.numberOfBedrooms,
      required this.numberOfKitchens,
      required this.numerOfCupboards});

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    imageUrl = json['image_url'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfKitchens = json['number_of_kitchens'];
    numerOfCupboards = json['number_of_cupboards'];
  }
}
