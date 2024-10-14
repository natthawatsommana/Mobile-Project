import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screen/Login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Regular Expression สำหรับตรวจสอบอีเมล
  final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    // ซ่อน status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // ดึงความสูงของหน้าจอเพื่อปรับช่องว่างด้านล่าง
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      appBar: AppBar(
        title: const Text("สร้างบัญชีผู้ใช้"),
      ),
      resizeToAvoidBottomInset:
          true, // ปรับให้หน้าจอเลื่อนได้เมื่อคีย์บอร์ดปรากฏ
      body: GestureDetector(
        onTap: () =>
            FocusScope.of(context).unfocus(), // ซ่อนคีย์บอร์ดเมื่อแตะจุดว่าง
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: keyboardHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("อีเมล", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรุณากรอกอีเมล';
                      } else if (!emailRegExp.hasMatch(value)) {
                        return 'รูปแบบอีเมลไม่ถูกต้อง';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  const Text("รหัสผ่าน", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรุณากรอกรหัสผ่าน';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  const Text("ยืนยันรหัสผ่าน", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'กรุณายืนยันรหัสผ่าน';
                      } else if (value != passwordController.text) {
                        return 'รหัสผ่านไม่ตรงกัน';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text("ลงทะเบียน",
                          style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          // แสดงป้อบอัพเมื่อข้อมูลถูกต้อง
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      "ลงทะเบียนสำเร็จ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    Center(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // ไปหน้าเข้าสู่ระบบเมื่อกดปุ่ม
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen(),
                                            ),
                                          );
                                        },
                                        child:
                                            const Text("ไปที่หน้าเข้าสู่ระบบ"),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
