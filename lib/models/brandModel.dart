class Branmodel {
  String brand_name;
  String comment;
  String brand_icon;
  String? pic;
  String? location;
  Branmodel(
      {this.location,
        this.pic,
      required this.brand_icon,
      required this.brand_name,
      required this.comment});
}
