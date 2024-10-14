import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screen/HardMode.dart';
import 'package:flutter_application_1/screen/NormalMode.dart';
import 'package:flutter_application_1/screen/home.dart';

class ModeScreen extends StatelessWidget {
  const ModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ซ่อน status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // ใช้ MediaQuery เพื่อดึงขนาดของหน้าจอ
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        // ใช้ Center เพื่อให้อยู่ตรงกลางทั้งแนวตั้งและแนวนอน
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0), // ปรับระยะห่างซ้ายขวาเล็กน้อย
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // จัดเรียงตรงกลางแนวตั้ง
            crossAxisAlignment:
                CrossAxisAlignment.center, // จัดเรียงตรงกลางแนวนอน
            children: [
              const Text(
                "เลือกระดับความยาก",
                style: TextStyle(
                  fontSize: 32, // ขนาดฟอนต์
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30), // ระยะห่างระหว่างหัวข้อและปุ่ม
              SizedBox(
                width: size.width * 0.7, // ปรับให้ปุ่มกว้าง 70% ของหน้าจอ
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.games_outlined), // ไอคอนระดับปานกลาง
                  label: const Text("ระดับปานกลาง",
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NormalMode();
                    }));
                  },
                ),
              ),
              const SizedBox(height: 20), // ระยะห่างระหว่างปุ่ม
              SizedBox(
                width: size.width * 0.7,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.games_outlined), // ไอคอนระดับยาก
                  label: const Text("ระดับยาก", style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HardMode();
                    }));
                  },
                ),
              ),
              const SizedBox(
                  height: 30), // ระยะห่างระหว่างปุ่มและปุ่มกลับไปหน้าแรก
              SizedBox(
                width: size.width * 0.7, // ปรับให้ปุ่มกลับกว้าง 70% ของหน้าจอ
                child: ElevatedButton(
                  child: const Text("กลับไปหน้าแรก",
                      style: TextStyle(fontSize: 20)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen(); // เปลี่ยนชื่อคลาสตามที่กำหนดใน home.dart
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
