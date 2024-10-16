import 'package:flutter/material.dart';

import 'placeholder_screen.dart';
import 'recruitment_details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesan'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          messageTile(
            context,
            'OPEN RECRUITMENT BO INTEL', 
            'Looking to level up your English skills and dive into',
            RecruitmentDetailsScreen(), // Screen for Open Recruitment Details
          ),
          messageTile(
            context,
            'SAYEMBARA KETUA PELAKSANA PKKMB', 
            'Siapa yang sudah tidak sabar lagi untuk mengikuti PKKMB',
            PlaceholderScreen(), // Placeholder for other screens
          ),
          messageTile(
            context,
            'PEKAN SENI MAHASISWA NASIONAL', 
            'Calling out mahasiswa seluruh perguruan tinggi Republik',
            PlaceholderScreen(), // Placeholder for other screens
          ),
          messageTile(
            context,
            'WEBINAR DATA SECURE', 
            'Introducing.. “Data Avengers: Uniting Forces Against Cyber',
            PlaceholderScreen(), // Placeholder for other screens
          ),
          messageTile(
            context,
            'BEASISWA PERTAMINA SOBAT BUMI 2024', 
            'Pertamina mencari anda! segera daftarkan diri anda 22 Januari',
            PlaceholderScreen(), // Placeholder for other screens
          ),
          messageTile(
            context,
            'GOOGLE SOLUTION CHALLENGE 2024', 
            'Did you know that Google Solution Challenge mission is to',
            PlaceholderScreen(), // Placeholder for other screens
          ),
        ],
      ),
      );
  }

  Widget messageTile(BuildContext context, String title, String subtitle, Widget targetScreen) {
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
    );
  }
}