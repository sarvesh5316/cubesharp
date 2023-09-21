import 'package:flutter/material.dart';

//colors
Color redColor = Colors.red.shade400;
Color orangeColor = Colors.orange.shade800;
Color whiteColor = Colors.white;
Color cyanColor = Colors.cyan;
Color blueColor = Colors.blue;
Color blackColor = Colors.black;
Color greenColor = Colors.green;
Color greyColor = Colors.grey.shade900;

//images
const boltImage = "assets/images/bolts.jpg";
const drillImage = "assets/images/drill.jpg";
const drillSet = "assets/images/drillset.jpg";
const hammerImage = "assets/images/hammer.jpg";
const mechanicPoster = "assets/images/mechanicPoster.jpg";
const plierImage = "assets/images/plier.jpg";
const timingBeltImage = "assets/images/timingbelt.jpg";
const timingPullyImage = "assets/images/timingpullly.png";
const toolBoxImage = "assets/images/toolbox.jpg";
const wrenchImage = "assets/images/wrench.jpg";

// fonts
const FontWeight bold = FontWeight.bold;
const FontWeight semiBold = FontWeight.w500;

//lists
const categoriesImages = [
  drillSet,
  hammerImage,
  plierImage,
  timingPullyImage,
  boltImage,
  timingBeltImage,
];
List<String> categoriesName = [
  'Drill Set',
  'Hammer',
  'Plier',
  'Timing Pully',
  'Nut-Bolt',
  'Timing Belt'
];
const topPicksImages = [
  drillSet,
  drillImage,
  plierImage,
  timingPullyImage,
  boltImage,
  timingBeltImage,
];
List<String> topPicksName = [
  'Drill Set',
  'Cordless Drill ',
  'Plier',
  'Timing Pully',
  'Nut-Bolt',
  'Timing Belt'
];
List<String> topPicksRating = [
  '4.5 ⭐',
  '4.3 ⭐',
  '4.1 ⭐',
  '3.8 ⭐',
  '3.5 ⭐',
  '4.6 ⭐',
];
List<double> originalPriceList = [3000, 4500, 250, 1500, 50, 500];
List<double> discountedPriceList = [2500, 3500, 235, 1000, 35, 380];
List<String> topPicksDetails = [];
const slidersLists = [
  mechanicPoster,
  toolBoxImage,
  timingPullyImage,
  drillSet,
  boltImage,
];
