import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:event_finder/screens/choose_event_screen.dart';

class FollowOrganizerScreen extends StatefulWidget {
  const FollowOrganizerScreen({super.key});

  @override
  State<FollowOrganizerScreen> createState() => _FollowOrganizerScreenState();
}

class _FollowOrganizerScreenState extends State<FollowOrganizerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChooseEventScreen()),
              );
            },
            child: Text(
              'Skip',
              style: GoogleFonts.poppins(
                color: Color(0xff7459E4),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Follow Organizer',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Follow a collections to get updates as new events are added to collections to you',
              style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search ...',
                hintStyle: GoogleFonts.poppins(color: Colors.grey),
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color(0xffF9FAFC),
                contentPadding: EdgeInsets.symmetric(vertical: 14),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Color(0xff7459E4)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Recommendations',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 450,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [CardWidget(), CardWidget(), CardWidget()],
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseEventScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7459E4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Verify',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          SizedBox(height: 18),
          SizedBox(
            width: 120,
            height: 50,
            child: Stack(
              children: [
                Positioned(left: 0, child: _buildCircle()),
                Positioned(left: 30, child: _buildCircle()),
                Positioned(left: 60, child: _buildCircle()),
              ],
            ),
          ),
          SizedBox(height: 18),
          Text(
            'Arts and Crafts of 8Ape',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'by 8Ape',
                style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 16,
                    color: Color(0xff7459E4),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'California, USA',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                print('Follow button pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
                side: BorderSide(color: Color(0xff7459E4), width: 1),
              ),
              child: Text(
                'Follow',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Color(0xff7459E4),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildCircle() {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
  );
}
