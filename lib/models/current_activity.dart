
class CurrentActivity {
  final String name, time;
  final double money;
  final bool status;

  CurrentActivity({
  required this.name,
  required this.time,
  required this.status,
  required this.money,
});
}

final List<CurrentActivity> currentActivity = [
  CurrentActivity(name: "Jim", time: "9:12am - Aug 5th 2021", status: true, money: 121.20),
  CurrentActivity(name: "Milo", time: "9:12am - Aug 5th 2021", status: true, money: 113),
  CurrentActivity(name: "Rudy", time: "9:12am - Aug 5th 2021", status: false, money: 112),
  CurrentActivity(name: "Kemal", time: "9:12am - Aug 5th 2021", status: true, money: 121),
  CurrentActivity(name: "Alif", time: "9:12am - Aug 5th 2021", status: true, money: 98.20),
  CurrentActivity(name: "Jim", time: "9:12am - Aug 5th 2021", status: true, money: 121.20),
  CurrentActivity(name: "Milo", time: "9:12am - Aug 5th 2021", status: true, money: 113),
  CurrentActivity(name: "Rudy", time: "9:12am - Aug 5th 2021", status: false, money: 112),
  CurrentActivity(name: "Kemal", time: "9:12am - Aug 5th 2021", status: true, money: 121),
  CurrentActivity(name: "Alif", time: "9:12am - Aug 5th 2021", status: true, money: 98.20),


];
