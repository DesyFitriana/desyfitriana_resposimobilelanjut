import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 50),
                Image.asset('asset/splash.png'), // Ganti dengan path logo Anda
                Text(
                  'Lupa Password',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Pesan',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                Text(
                  'Silahkan masukkan email anda dan tunggu kode etik akan dikirimkan',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Masukan email',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.blue, // Warna biru untuk tombol
                  ),
                  onPressed: () {
                    // Tambahkan logika login di sini
                  },
                  child: Text('Kirim'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
