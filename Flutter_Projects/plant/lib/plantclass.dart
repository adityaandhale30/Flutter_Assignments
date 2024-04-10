class PlantInfo {
  final String plantImage;
  final String plantName;
  final int plantPrice;

  const PlantInfo(
      {required this.plantImage,
      required this.plantName,
      required this.plantPrice});
}

List plantList = const [
  PlantInfo(
      plantImage: "assets/plant3.png",
      plantName: "Snake Plant",
      plantPrice: 350),
  PlantInfo(
      plantImage: "assets/plant3.png",
      plantName: "Snake Plant",
      plantPrice: 350),
  PlantInfo(
      plantImage: "assets/plant3.png",
      plantName: "Snake Plant",
      plantPrice: 350),
  PlantInfo(
      plantImage: "assets/plant3.png",
      plantName: "Snake Plant",
      plantPrice: 350),
  PlantInfo(
      plantImage: "assets/plant3.png",
      plantName: "Snake Plant",
      plantPrice: 350),
];

List plantTypeList = ["Indoor", "Outdoor", "DumDoor", "anDoor", ""];
