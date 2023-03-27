import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 1))
          ],
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                'assets/images/bookcover1.jpeg',
                width: 150,
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Batu Halus",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 180,
                    height: 50,
                    child: Text(
                      "Digunakan untuk membangun bangunan seperti rumah",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          height: 1,
                          fontSize: 13.5),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 35,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                          child: Text(
                            'Learn More',
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
