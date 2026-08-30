import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
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
            SizedBox(height: 8),
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
            SizedBox(height: 20),
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
            SizedBox(height: 24),
            Text(
              'Recommendations',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 320,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(50),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  print('helo dunia');
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
