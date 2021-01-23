import 'package:travel_app/models/activities.dart';

import '../models/discover.dart';

class AppContent {
  static final List<String> categories = [
    "All",
    "Destinations",
    "Cities",
    "Experiences"
  ];

  static final List<DiscoverItem> discoverItems = [
    DiscoverItem(
        image: "assets/images/kayak.png",
        name: "Kayaking in the Tofino Sea",
        location: "Canada",
        imageBg: 'assets/images/kayak-big.png'),
    DiscoverItem(
        image: "assets/images/canyon.png",
        name: "Hiking the Grand Canyon",
        location: "USA",
        imageBg: 'assets/images/canyon-big.png')
  ];

  static final List<Activity> activities = [
    Activity(image: "assets/kayak.svg", name: "kayak"),
    Activity(image: "assets/hike.svg", name: "hike"),
    Activity(image: "assets/water_ski.svg", name: "water ski"),
    Activity(image: "assets/spa.svg", name: "spa"),
    Activity(image: "assets/tenis.svg", name: "tenis"),
    Activity(image: "assets/bike.svg", name: "cycle")
  ];

  static final List<String> learnMore = [
    "assets/images/boatbeach.png",
    "assets/images/beach.png",
  ];

  static final String desc =
      "Great day hikes and backpacking routes on the North and South Rim of this century-old national park include easy hikes overlooking the rim and more rugged trekking options that descend into the canyon.";
}
