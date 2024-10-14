import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Mode.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("เข้าสู่ระบบ"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "อีเมล",
                  border: OutlineInputBorder(),
                ),
                keyboardType:
                    TextInputType.emailAddress, // คีย์บอร์ดสำหรับอีเมล
                autofillHints: const [
                  AutofillHints.email
                ], // เปิดใช้งาน autofill สำหรับอีเมล
                textInputAction: TextInputAction
                    .next, // เปลี่ยนปุ่มคีย์บอร์ดเป็น Next เพื่อไปช่องถัดไป
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'กรุณากรอกอีเมล';
                  }
                  // ตรวจสอบฟอร์แมทอีเมล
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (!emailRegex.hasMatch(value)) {
                    return 'กรุณากรอกอีเมลให้ถูกต้อง';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: "รหัสผ่าน",
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // ซ่อนรหัสผ่านเมื่อพิมพ์
                textInputAction:
                    TextInputAction.done, // กำหนดปุ่มคีย์บอร์ดเป็น Done
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // ถ้าอีเมลถูกต้อง ให้ไปที่หน้า Mode
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ModeScreen()),
                    );
                  }
                },
                child: const Text('เข้าสู่ระบบ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
