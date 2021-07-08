import 'package:event_app/models/event.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard extends StatefulWidget {
  Event event;
  EventCard({this.event});
  @override
  _EventCardState createState() => _EventCardState(event: event);
}

class _EventCardState extends State<EventCard> {
  Event event;
  _EventCardState({this.event});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 15,
          child: Container(
            width: 280,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  33.36,
                ),
                bottomRight: Radius.circular(33.36),
              ),
              boxShadow: [],
              color: Color(0xffFFFFFF),
            ),
            padding: EdgeInsets.only(
              left: 26,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  event.date,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      0xff684741,
                    ).withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  event.name,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(
                      0xff684741,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Image.asset(
          event.imgUrl,
          width: 280,
          height: 287,
        ),
        Positioned(
          right: 24,
          top: 20,
          child: Image.asset(
            'images/liked.png',
            width: 42,
            height: 42,
          ),
        ),
      ],
    );
  }
}
