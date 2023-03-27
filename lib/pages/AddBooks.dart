import 'package:cobak/main.dart';
import 'package:cobak/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cobak/pages/SearchPage.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "ADD BOOKS",
          style: TextStyle(
              fontSize: 80, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Whats the books title ?",
          style: TextStyle(fontSize: 20),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "books title ?",
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Whos the books writer ?",
          style: TextStyle(fontSize: 20),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "writers name ?",
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        Text(
          "Insert the picture of the books cover",
          style: TextStyle(fontSize: 20),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "choose picture ",
            hintStyle: TextStyle(color: Colors.white),
          ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            "choose image",
            style: TextStyle(fontSize: 10),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        ),
        ElevatedButton(
          child: Text(
            "Upload",
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchPage()));
          },
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
        )
      ],
    );
  }
}
