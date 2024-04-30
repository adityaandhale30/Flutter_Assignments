class QuestionsModel {
  final String questionTopic;
  final String questionDescription;
  const QuestionsModel(
      {required this.questionTopic, required this.questionDescription});
}

List questionList = const [
  QuestionsModel(
      questionTopic: "Math", questionDescription: """If David’s age is 27 
years old in 2011. What 
was his age in 2003?"""),
  QuestionsModel(
      questionTopic: "Math", questionDescription: """If David’s age is 27 
years old in 2011. What 
was his age in 2003?""")
];
