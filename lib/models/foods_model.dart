import 'package:fastfood/models/nutratilnal_value.dart';

class foods_nodel {
  String food_name;
  String food_price;
  String location;
  String rating;
  String pic;
  Nutrational_value nutrational_value;

  foods_nodel(
      {
      required this.pic,  
      required this.food_name,
      required this.food_price,
      required this.location,
      required this.nutrational_value,
      required this.rating});
}
