import 'package:event_app/models/event.dart';
import 'package:event_app/widgets/eventcard.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/home.png',
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/bookmark.png',
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/receipt.png',
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                'images/user.png',
              ),
              label: ""),
        ],
      ),
      backgroundColor: Color(0xffF6F6F7),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/menu.png',
                      width: 24,
                      height: 24,
                    ),
                    Image.asset(
                      'images/notif.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Hai, Ian Prayata!",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff684741).withOpacity(
                    0.8,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Discover Events",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xff684741,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                  color: Color(0xffFFFFFF),
                ),
                width: 314,
                height: 46,
                margin: EdgeInsets.only(
                  right: 30,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'images/search.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      "Search Events Here",
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff684741).withOpacity(
                          0.5,
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'images/filter.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                "Popular Events",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(
                    0xff684741,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 405,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    EventCard(
                      event: Event(
                        name: "West Java Food Festival",
                        imgUrl: 'images/dimsum.png',
                        date: "24-28 October 2021",
                      ),
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    EventCard(
                      event: Event(
                        name: "Ramadhan Ice Festival",
                        imgUrl: 'images/icecream.png',
                        date: "16-28 December 2021",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Image.asset(
                'images/indicator.png',
                width: 55,
                height: 7,
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
