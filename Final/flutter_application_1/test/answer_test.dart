//Unit Testing
//ทดสอบการทำงานของ method ตรวจคำตอบของด่านระดับปานกลาง
import 'package:flutter_application_1/Answer/Answer.dart';
import 'package:test/test.dart';

void main() {
  group('Answer Class Tests', () {
    // รันก่อนทุก test case
    setUp(() {
      // reset การตั้งค่าถ้าจำเป็น
    });

    test('Should calculate correct score for Normal Modes', () {
      var userAnswersNormal = [
        "F",
        "F",
        "F",
        "T",
        "T", //ข้อนี้ต้องตอบ F
        "F",
        "F", //ข้อนี้ต้องตอบ T
        "T",
        "F",
        "F",
        "F",
        "T"
      ]; //คาดหวังว่าจะได้ 10/12
      var userAnswersNormal_2 = [
        "F",
        "F", //ข้อนี้ต้องตอบ T
        "F",
        "T",
        "T",
        "F", //ข้อนี้ต้องตอบ F
        "F",
        "F",
        "F",
        "T",
        "F",
        "F" //ข้อนี้ต้องตอบ T
      ]; //ชุดคำตอบนี้ได้คะแนน 9/12 หลังจากบวกกับด่านแรกคาดหวังว่าจะได้ 19/24
      var userAnswersNormal_Last = [
        "T",
        "T",
        "T",
        "F",
        "T",
        "T",
        "F",
        "T",
        "T",
        "F",
        "F",
        "F"
      ]; //ข้อนี้เป็นชุดคำตอบที่ถูกทั้งหมด หลังจากบวกกับสองด่านที่แล้วคาดหวังว่าจะได้ 31/36

      var answerNormal = Answer(userAnswersNormal);
      var answerNormal_2 = Answer(userAnswersNormal_2);
      var answerNormal_Last = Answer(userAnswersNormal_Last);

      // คำนวณคะแนนแต่ละด่าน
      answerNormal.scoreForNormalMode();
      answerNormal_2.scoreForNormal_2();
      answerNormal_Last
          .scoreForNormal_3(); // ปรับให้เป็น scoreForNormal_3() ตามชื่อด่าน

      // ตรวจสอบคะแนนรวม
      int totalScore = answerNormal.getFinalScore();
      expect(totalScore, equals(10)); // คะแนนที่คาดหวังคือ 10

      totalScore += answerNormal_2.getFinalScore();
      expect(totalScore, equals(19)); //คะแนนที่คาดหวังคือ 19

      totalScore += answerNormal_Last.getFinalScore();
      expect(totalScore, equals(31)); // คะแนนที่คาดหวังคือ 31
    });
  });
}
