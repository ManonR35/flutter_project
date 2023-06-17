import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
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
                        children: const [
                          Text('Mon compte',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30)),
                          TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Nom',
                              hintText: 'John',
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 16, height: 3),
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          TextField(
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
                    children: const [
                      TextField(
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
                    children: const [
                      TextField(
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
