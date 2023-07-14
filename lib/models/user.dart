class User {
  String firstName;
  String lastName;
  String username;
  String phone;
  String email;
  String address;
  String postalCode;
  String city;

  User({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phone,
    required this.email,
    required this.address,
    required this.postalCode,
    required this.city,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'].toString(),
      lastName: json['lastName'].toString(),
      username: json['username'].toString(),
      phone: json['phone'].toString(),
      email: json['email'].toString(),
      address: json['address']['address'].toString(),
      postalCode: json['address']['postalCode'].toString(),
      city: json['address']['city'].toString(),
    );
  }
}
