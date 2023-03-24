import 'package:cobak/pages/AddReview.dart';
import 'package:cobak/pages/ProfilePage.dart';
import 'package:cobak/widget/NavBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "lukea.",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 55,
                  color: Colors.white),
            ),
            Text(
              "Let's See The Review",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Books Title",
                suffixIcon: Icon(Icons.search),
                prefixIconColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
