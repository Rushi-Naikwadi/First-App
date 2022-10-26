class optionWithScore {
  final String optionText;
  final int optionScore;

  optionWithScore(this.optionText, this.optionScore);
}

class MCQ {
  String questionText;
  List <optionWithScore> optionList;

  MCQ (this.questionText, this.optionList);
}