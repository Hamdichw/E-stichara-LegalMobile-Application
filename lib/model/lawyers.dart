class Lawyer {
  int age;
  String name;
  String lastName;
  String? phone;
  String image;
  bool? valide;
  String location;
  String type;
  Lawyer(
      {required this.age,
      required this.name,
      required this.lastName,
      this.phone,
      required this.image,
      this.valide,
      required this.location,
      required this.type});
}