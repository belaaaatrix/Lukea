import 'package:cobak/widget/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFE69316),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Vabela Dwi Christy',
                style: GoogleFonts.inter(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Color(0xFFE69316),
              ),
            ),
            InfoCard(text: 'Name', icon: Icons.edit, onPressed: () async {}),
            InfoCard(
              text: 'Email',
              icon: Icons.email,
              onPressed: () async {},
            ),
            InfoCard(
              text: 'Password',
              icon: Icons.password,
              onPressed: () {},
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NavBar()));
              },
              child: Text(
                "Edit Profile",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 125),
                  backgroundColor: Color(0xFFE69316)),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NavBar()));
              },
              child: Text(
                "Log Out",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 140),
                  backgroundColor: Color(0xFFE69316)),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  Function onPressed;

  InfoCard({
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(
            icon,
            color: Color(0xFFE69316),
          ),
          title: Text(
            text,
            style: GoogleFonts.sourceSansPro(
                fontSize: 20, color: Color(0xFFE69316)),
          ),
        ),
      ),
    );
  }
}
