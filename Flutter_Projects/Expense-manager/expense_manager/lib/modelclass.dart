class ExpenseInfo {
  final String image;
  final String type;
  final String description;
  final int expense;
  final String date;

  const ExpenseInfo(
      {required this.image,
      required this.type,
      required this.description,
      required this.expense,
      required this.date});
}

List expenseModel = [
  const ExpenseInfo(
    image: "assets/medicine.png",
    type: "Medicine",
    description: "Lorem Ipsum is simply dummy text of the ",
    expense: 500,
    date: "3 June | 11:50 AM",
  ),
  const ExpenseInfo(
    image: "assets/food.png",
    type: "Food",
    description: "Lorem Ipsum is simply dummy text of the ",
    expense: 650,
    date: "3 June | 11:50 AM",
  ),
    const ExpenseInfo(
    image: "assets/shopping.png",
    type: "Shopping",
    description: "Lorem Ipsum is simply dummy text of the ",
    expense: 325,
    date: "3 June | 11:50 AM",
  ),
    const ExpenseInfo(
    image: "assets/fuel.png",
    type: "Fuel",
    description: "Lorem Ipsum is simply dummy text of the ",
    expense: 600,
    date: "3 June | 11:50 AM",
  ),
    const ExpenseInfo(
    image: "assets/entertainment.png",
    type: "Entertainment",
    description: "Lorem Ipsum is simply dummy text of the ",
    expense: 475,
    date: "3 June | 11:50 AM",
  ),
];
