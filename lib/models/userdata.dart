import 'package:fastfood/models/usermodel.dart';

class Userdata {
  static List<Usermodel> userlist = [
    Usermodel(
        full_name: 'JohnWick',
        mobile_number: '+998903334567',
        passoword: '12345678')
  ];

  late Usermodel currentuser;
}
