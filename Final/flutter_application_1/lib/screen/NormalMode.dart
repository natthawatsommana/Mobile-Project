import 'package:flutter/material.dart';
import 'package:flutter_application_1/Answer/Answer.dart';
import 'package:flutter_application_1/screen/Map/Normal_2.dart';
import 'package:flutter_application_1/screen/Mode.dart';

class NormalMode extends StatefulWidget {
  const NormalMode({super.key});

  @override
  _NormalModeState createState() => _NormalModeState();
}

class _NormalModeState extends State<NormalMode> {
  String? Value1_1;
  String? Value1_2;
  String? Value1_3;
  String? Value2_1;
  String? Value2_2;
  String? Value2_3;
  String? Value3_1;
  String? Value3_2;
  String? Value3_3;
  String? Value4_1;
  String? Value4_2;
  String? Value4_3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ด่านที่ 1/3",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Table(
                border: TableBorder.all(color: Colors.green, width: 2),
                columnWidths: const {
                  0: FixedColumnWidth(120),
                  1: FixedColumnWidth(120),
                  2: FixedColumnWidth(120),
                  3: FixedColumnWidth(120),
                  4: FixedColumnWidth(150),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.green[200]),
                    children: const [
                      Column(children: [
                        Text('P', style: TextStyle(fontSize: 20))
                      ]),
                      Column(children: [
                        Text('Q', style: TextStyle(fontSize: 20))
                      ]),
                      Column(children: [
                        Text('P ^ Q', style: TextStyle(fontSize: 20))
                      ]),
                      Column(children: [
                        Text('~P', style: TextStyle(fontSize: 20))
                      ]),
                      Column(children: [
                        Text('(P ^ Q) v ~P', style: TextStyle(fontSize: 20))
                      ]),
                    ],
                  ),
                  TableRow(
                    children: [
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value1_1,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value1_1 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 60,
                          child: Center(
                              child:
                                  Text('F', style: TextStyle(fontSize: 24)))),
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value1_2,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value1_2 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 60,
                          child: Center(
                              child:
                                  Text('T', style: TextStyle(fontSize: 24)))),
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value1_3,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value1_3 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // แถวที่ 2
                  TableRow(
                    children: [
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value2_1,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value2_1 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 60,
                          child: Center(
                              child:
                                  Text('F', style: TextStyle(fontSize: 24)))),
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value2_2,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value2_2 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value2_3,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value2_3 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 60,
                          child: Center(
                              child:
                                  Text('T', style: TextStyle(fontSize: 24)))),
                    ],
                  ),
                  // แถวที่ 3
                  TableRow(
                    children: [
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value3_1,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value3_1 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value3_2,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value3_2 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 60,
                          child: Center(
                              child:
                                  Text('T', style: TextStyle(fontSize: 24)))),
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value3_3,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value3_3 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 60,
                          child: Center(
                              child:
                                  Text('T', style: TextStyle(fontSize: 24)))),
                    ],
                  ),
                  // แถวที่ 4
                  TableRow(
                    children: [
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value4_1,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value4_1 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 60,
                          child: Center(
                              child:
                                  Text('T', style: TextStyle(fontSize: 24)))),
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value4_2,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value4_2 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                      const SizedBox(
                          height: 60,
                          child: Center(
                              child:
                                  Text('T', style: TextStyle(fontSize: 24)))),
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: DropdownButton<String>(
                            value: Value4_3,
                            items: const [
                              DropdownMenuItem(
                                value: 'T',
                                child: Center(
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 7, 190,
                                          1), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'F',
                                child: Center(
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color.fromARGB(255, 247, 27,
                                          27), // เปลี่ยนสีตัวอักษรเป็นสีฟ้า
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                Value4_3 = value;
                              });
                            },
                            isExpanded: true,
                            hint: null,
                            underline: Container(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // นำทางไปยังหน้า Mode.dart
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ModeScreen()), // เปลี่ยน ModeScreen เป็นชื่อของคลาสที่แสดงหน้า Mode.dart
                      );
                    },
                    child: const Text("กลับไปหน้าหลัก"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // รวบรวมคำตอบจาก Dropdown
                      List<String> userAnswers = [
                        Value1_1 ?? '', // ถ้าเป็น null จะใส่เป็นค่าว่าง
                        Value1_2 ?? '', // ถ้าเป็น null จะใส่เป็นค่าว่าง
                        Value1_3 ?? '',
                        Value2_1 ?? '',
                        Value2_2 ?? '',
                        Value2_3 ?? '',
                        Value3_1 ?? '',
                        Value3_2 ?? '',
                        Value3_3 ?? '',
                        Value4_1 ?? '',
                        Value4_2 ?? '',
                        Value4_3 ?? '',
                      ];

                      // สร้าง instance ของคลาส Answer และคำนวณคะแนน
                      Answer answer = Answer(userAnswers);
                      int score = answer.scoreForNormalMode();
                      int finalScore =
                          answer.getFinalScore(); // รับค่าคะแนนสะสม
                      // แสดงป๊อปอัพที่แสดงคะแนน
                      showDialog(
                        context: context,
                        barrierDismissible:
                            false, // ป้องกันการกดพื้นที่ว่างแล้วป๊อปอัพหายไป
                        builder: (context) {
                          return AlertDialog(
                            title: const Text(""),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "คะแนนในด่านที่ 1",
                                  style: TextStyle(
                                    fontSize: 24, // ขนาดตัวอักษรใหญ่ขึ้น
                                    fontWeight: FontWeight.bold, // ทำให้ตัวหนา
                                  ),
                                ),
                                const SizedBox(
                                    height: 10), // เพิ่มช่องว่างระหว่างข้อความ
                                Text(
                                  "$score/12", // แสดงคะแนน
                                  style: const TextStyle(
                                    fontSize: 36, // ขนาดตัวเลขใหญ่ขึ้น
                                    fontWeight: FontWeight.bold, // ทำให้ตัวหนา
                                    color:
                                        Colors.blue, // เพิ่มสีฟ้าให้กับตัวเลข
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // ปิดป๊อปอัพ
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Normal_2(
                                        finalScore:
                                            finalScore, // ส่งคะแนนไปยังหน้าถัดไป
                                      ),
                                    ),
                                  );
                                },
                                child: const Text("ด่านต่อไป"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text("ตรวจสอบคะแนน"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
