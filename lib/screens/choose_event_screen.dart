import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseEventScreen extends StatefulWidget {
  const ChooseEventScreen({super.key});

  @override
  State<ChooseEventScreen> createState() => _ChooseEventScreenState();
}

class _ChooseEventScreenState extends State<ChooseEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.transparent,
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Favourite Event',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xff7459E4)),
                    ),
                    child: Center(child: Text('Event $index')),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
