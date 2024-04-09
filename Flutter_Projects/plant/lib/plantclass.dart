class PlantInfo {
  final String plantImage;
  final String plantName;
  final double plantPrice;

  const PlantInfo(
      {required this.plantImage,
      required this.plantName,
      required this.plantPrice});
}

List plantList = const [
  PlantInfo(plantImage: " ", plantName: "Snake Plant", plantPrice: 350),
  PlantInfo(plantImage: " ", plantName: "Snake Plant", plantPrice: 350),
  PlantInfo(plantImage: " ", plantName: "Snake Plant", plantPrice: 350),
  PlantInfo(plantImage: " ", plantName: "Snake Plant", plantPrice: 350),
  PlantInfo(plantImage: " ", plantName: "Snake Plant", plantPrice: 350),
];

List plantTypeList = ["Indoor", "Outdoor"];
