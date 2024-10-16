import 'package:flutter/material.dart';

class AkunSayaScreen extends StatelessWidget {
  const AkunSayaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Akun Saya"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Detail Akun",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Image.asset("assets/images/Profile.png", width: 80, height: 80),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Laila Tsabitah",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Fakultas Ilmu Komputer, Sistem Informasi",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              "Informasi Akun:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text("lailatsabitah@student.unsri.ac.id"),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("+62 812 3456 7890"),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Palembang, Sumatera Selatan"),
            ),
          ],
        ),
      ),
    );
  }
}
