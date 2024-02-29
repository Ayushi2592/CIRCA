import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  static const String _title = 'Splash';
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEHamLH3_uFOrFzH9jvheR2WzGNXZaQkyCliOtnxqIpfcrk7MPlAA0QaermK5-c-egdS8&usqp=CAU"),
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("CIRCA" , style: GoogleFonts.pacifico(
              fontSize: 50,
              color: Colors.white,
            ),),
            SizedBox( height: 25),
            Column(
              children: [
                Text("Urban elegance with history ",
                  style: GoogleFonts.pacifico(
                    fontSize: 30,
                    color: Colors.white,
                  ), ),
                SizedBox(height: 80),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 30),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
