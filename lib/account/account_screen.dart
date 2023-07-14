import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/user.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  Future<void> fetchUser() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/users/1'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        User newUser = User.fromJson(data);
        firstNameController.text = newUser.firstName;
        lastNameController.text = newUser.lastName;
        usernameController.text = newUser.username;
        phoneController.text = newUser.phone;
        emailController.text = newUser.email;
        addressController.text = newUser.address;
        postalCodeController.text = newUser.postalCode;
        cityController.text = newUser.city;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Image.network(
                        'https://i.dummyjson.com/data/products/2/3.jpg',
                        scale: 2),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text('Mon compte',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                          TextField(
                            controller: lastNameController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Nom',
                              hintText: 'Montron',
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 16, height: 3),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          TextField(
                            controller: firstNameController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Prénom',
                              hintText: 'Doe',
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 16, height: 3),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          TextField(
                            controller: usernameController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Pseudo',
                              hintText: 'Jodo',
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 16, height: 3),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                        ],
                      ))
                ],
              )),
          Container(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Téléphone',
                          hintText: '+33102030405',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 16, height: 3),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'john.doe@nonymou.io',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 16, height: 3),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: addressController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Adresse',
                          hintText: '42 rue des escargots',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 16, height: 3),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      TextField(
                        controller: postalCodeController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Code Postal',
                          hintText: '42420',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 16, height: 3),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                      TextField(
                        controller: cityController,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'Ville',
                          hintText: 'Lorette',
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 16, height: 3),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
