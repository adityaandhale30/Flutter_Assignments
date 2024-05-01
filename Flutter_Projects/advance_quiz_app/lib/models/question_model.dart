class QuestionsModel {
  final String questionTopic;
  final String questionDescription;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final int correctoption;
  const QuestionsModel({
    required this.questionTopic,
    required this.questionDescription,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.correctoption,
  });
}

List questionList = const [
  QuestionsModel(
    questionTopic: "Math",
    questionDescription: """If David’s age is 27
years old in 2011. What
was his age in 2003?""",
    option1: "19 Years",
    option2: "37 Years",
    option3: "20 Years",
    option4: "17 Years",
    correctoption: 3,
  ),
  QuestionsModel(
    questionTopic: "Math",
    questionDescription: """If David’s age is 27
years old in 2011. What
was his age in 2003?""",
    option1: "19 Years",
    option2: "37 Years",
    option3: "20 Years",
    option4: "17 Years",
    correctoption: 1,
  ),
];
