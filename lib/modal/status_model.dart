class StatusModel {
  final String name;
  final String time;
  final String pic;

  StatusModel({required this.name, required this.time, required this.pic});
}

List<StatusModel> statusData = [
  StatusModel(
      name: "sudhu ❤️",
      time: "09.35 AM",
      pic: "https://randomuser.me/api/portraits/women/8.jpg"),
  StatusModel(
      name: "Bishry",
      time: "yesterday",
      pic: "https://randomuser.me/api/portraits/men/2.jpg"),
  StatusModel(
      name: "Amjad",
      time: "12/15/2024",
      pic: "https://randomuser.me/api/portraits/men/3.jpg"),
  StatusModel(
      name: "Ammar",
      time: "11/10/2024",
      pic: "https://randomuser.me/api/portraits/men/4.jpg"),
  StatusModel(
      name: "Razim",
      time: "09/15/2024",
      pic: "https://randomuser.me/api/portraits/men/6.jpg"),
  StatusModel(
      name: "BABA",
      time: "10/03/24",
      pic: "https://randomuser.me/api/portraits/women/32.jpg"),
];
