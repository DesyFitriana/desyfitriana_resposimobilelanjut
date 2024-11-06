import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                  'Masuk',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
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
                SizedBox(height: 16),
                Text(
                  'Masukan password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
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
                    Navigator.pushNamed(context, '/HomePage');
                  },
                  child: Text('Masuk'),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun?"),
                    TextButton(
                      onPressed: () {
                        // Navigasi ke halaman pendaftaran
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text("Daftar"),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // Navigasi ke halaman lupa password
                    Navigator.pushNamed(context, '/forgotPassword');
                  },
                  child: Text("Lupa password?"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
