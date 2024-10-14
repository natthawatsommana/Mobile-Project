class Answer {
  //ชุดคำตอบของระดับปานกลางด่านที่1
  List<String> correctAnswerNormal = [
    "F",
    "F",
    "F",
    "T",
    "F",
    "F",
    "T",
    "T",
    "F",
    "F",
    "F",
    "T"
  ];
  //ชุดคำตอบของระดับปานกลางด่านที่2
  List<String> correctAnswerNormal_2 = [
    "F",
    "T",
    "F",
    "T",
    "T",
    "T",
    "F",
    "F",
    "F",
    "T",
    "F",
    "T"
  ];
  //ชุดคำตอบของระดับปานกลางด่านที่3
  List<String> correctAnswerNormal_3 = [
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
  ];
  //ชุดคำตอบของระดับยากด่านที่1
  List<String> correctAnswerHard = [
    "T",
    "F",
    "T",
    "F",
    "T",
    "F",
    "F",
    "T",
    "T",
    "F",
    "F",
    "T",
    "T",
    "T",
    "T",
    "F",
    "T"
  ];
  //ชุดคำตอบของระดับยากด่านที่2
  List<String> correctAnswerHard_2 = [
    "T",
    "F",
    "T",
    "T",
    "T",
    "F",
    "F",
    "T",
    "T",
    "T",
    "F",
    "T",
    "F",
    "F",
    "T",
    "T",
    "T"
  ];
  List<String> userAnswers; // คำตอบที่ผู้ใช้กรอก
  Answer(this.userAnswers); // Constructor รับค่า userAnswers
  int finalScore = 0;
  int _calculateScore(List<String> correctAnswers) {
    int score = 0; // ตัวแปรเก็บคะแนนเริ่มต้นที่ 0
    for (int i = 0; i < correctAnswers.length; i++) {
      if (correctAnswers[i] == userAnswers[i]) {
        score++; // เพิ่มคะแนนเมื่อคำตอบถูกต้อง
      }
    }
    finalScore += score;
    return score;
  }

  int scoreForNormalMode() {
    return _calculateScore(correctAnswerNormal);
  }

  int scoreForNormal_2() {
    return _calculateScore(correctAnswerNormal_2);
  }

  int scoreForNormal_3() {
    return _calculateScore(correctAnswerNormal_3);
  }

  int scoreForHardMode() {
    return _calculateScore(correctAnswerHard);
  }

  int scoreForHard_2() {
    return _calculateScore(correctAnswerHard_2);
  }

  int getFinalScore() {
    return finalScore;
  }
}
