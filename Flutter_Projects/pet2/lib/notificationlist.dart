class NotificationModel {
  final String date;

  final String checktext;

  final String vaccinetext;

  final String apointtext;
  const NotificationModel({
    required this.date,
    required this.checktext,
    required this.apointtext,
    required this.vaccinetext,
  });
}

List notificationList = [
  const NotificationModel(
    date: "Today",
    checktext: "Your checkout is successfull, product is on tne way",
    apointtext: "Appointment request accepted",
    vaccinetext: "Vaccinate your pet timely",
  ),
  const NotificationModel(
    date: "25 September",
    checktext: "Your checkout is successfull",
    apointtext: "Appointment request accepted",
    vaccinetext: "Vaccinate your pet timely",
  ),
  const NotificationModel(
    date: "15 September",
    checktext: "Your checkout is successfull, product is on tne way",
    apointtext: "Appointment request accepted",
    vaccinetext: "Vaccinate your pet timely",
  ),
  const NotificationModel(
    date: "10 Augest",
    checktext: "Your checkout is successfull, product is on tne way",
    apointtext: "Appointment request accepted",
    vaccinetext: "Vaccinate your pet timely",
  ),
];
