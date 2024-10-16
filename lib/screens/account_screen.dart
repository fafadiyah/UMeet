import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'akunsaya_screen.dart';
import 'package:umeet/splash_page.dart';
import 'package:umeet/screens/account_screen.dart';
import 'package:umeet/chat.dart';
import 'package:umeet/eventpage.dart';
import 'package:umeet/main.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Profil Mahasiswa",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          //Laila Tsabitah
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset("assets/images/Profile.png", width: 50, height: 50),
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
                    )
                  ],
                ),
              ],
            ),
          ),

          //Kelola Akun
          const SizedBox(height: 40),
          const Text(
            "Kelola Akun",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

          //akun saya
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const AkunSayaScreen()), // Navigasi ke halaman Akun Saya
              );
            },
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Image.asset("assets/images/akunsaya.png", width: 35, height: 35),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Akun Saya",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Ionicons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),

          //notifikasi
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset("assets/images/notification.png", width: 35, height: 35),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Push Notifikasi",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Ionicons.arrow_forward),
                )
              ],
            ),
          ),

          //Log Out
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset("assets/images/logout.png", width: 35, height: 35),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Ionicons.arrow_forward),
                )
              ],
            ),
          ),

          //Lainnya
          const SizedBox(height: 40),
          const Text(
            "Lainnya",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),

          //bantuan
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset("assets/images/bantuan.png", width: 35, height: 35),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dukungan & Bantuan",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Ionicons.arrow_forward),
                )
              ],
            ),
          ),

          //Tentang Aplikasi
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset("assets/images/tentang.png", width: 35, height: 35),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tentang Aplikasi",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Ionicons.arrow_forward),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Ionicons.home_outline), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Ionicons.compass_outline), label: 'Lainnya'),
          BottomNavigationBarItem(icon: Icon(Ionicons.school_outline), label: 'Akademik'),
          BottomNavigationBarItem(icon: Icon(Ionicons.mail_outline), label: 'Pesan'),
          BottomNavigationBarItem(icon: Icon(Ionicons.person_outline), label: 'Akun'),
        ],
        currentIndex: _currentIndex, // Menampilkan tab yang aktif
        selectedItemColor: Colors.yellow, // Warna item yang dipilih
        unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 4) {
            // Jika ikon Akun dipencet, pindah ke halaman profil
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AccountScreen()),
            );
          }
          if (index == 0){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          if (index == 1){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => EventHomePage()),
            );
          }
          if (index == 3){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          }
        },
      ),
    );
  }
}
