import 'package:flutter/material.dart';

class RecruitmentDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Open Recruitment BO INTEL'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),

            // Teks Judul
            Text(
              'Open Recruitment BO INTEL',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Deskripsi yang lebih panjang
            Text(
              'Are you passionate about improving your English skills while contributing to BO INTEL? '
              'We are excited to announce the open recruitment for members who are eager to grow, '
              'learn, and participate in exciting projects. Join us to develop essential skills and become part of a dynamic team.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Info detail
            Text(
              'Recruitment Details:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '1. Recruitment Period: October 10 - October 31, 2024\n'
              '2. Eligibility: Open to all students with a passion for technology and language\n'
              '3. Required Skills: Intermediate English, Teamwork, Communication\n'
              '4. Interview Schedule: November 5-10, 2024',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Tambahkan tombol untuk tindakan
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: Icon(Icons.event),
                  label: Text('Apply Now'),
                  onPressed: () {
                    // Tindakan untuk apply
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Apply for BO INTEL'),
                          content: Text('Application form will be available soon. Stay tuned!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.info),
                  label: Text('Learn More'),
                  onPressed: () {
                    // Tindakan untuk info lebih lanjut
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Visit our website for more information!')),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 16),

            // Section Kontak
            Text(
              'Contact Us:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.email, color: Colors.black54),
                SizedBox(width: 8),
                Text('bointel@intel.com', style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.black54),
                SizedBox(width: 8),
                Text('+123 456 789', style: TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
