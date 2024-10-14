import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screen/Login.dart';
import 'package:flutter_application_1/screen/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ซ่อน status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // ใช้ MediaQuery เพื่อดึงขนาดของหน้าจอ
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, // จัดให้อยู่กลาง
            children: [
              SizedBox(
                width: size.width, // ใช้ความกว้างเต็มหน้าจอ
                height: size.height * 0.3, // ใช้ 30% ของความสูงหน้าจอ
                child: Image.asset(
                  "assets/images/Home.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Logic Game",
                style: TextStyle(
                  fontSize: 36, // ขนาดฟอนต์ใหญ่ขึ้น
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: size.width * 0.7, // ปรับให้ปุ่มกว้าง 70% ของหน้าจอ
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.login),
                  label:
                      const Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }));
                  },
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: size.width * 0.7,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("สร้างบัญชีผู้ใช้",
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
