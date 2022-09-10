class DataCollection {
  final String image;
  final String titre;
  final int temperature;
  final double humidite;
  final int eau;
  final int time;

  DataCollection(
    this.image, 
    this.titre, 
    this.temperature, 
    this.eau, 
    this.humidite,
    this.time,
    );


}
  List<DataCollection> dataFormation = [
  DataCollection("images/assets/carotte.png", "Carotte",15,2,85,65),
  DataCollection("images/assets/tomate.png", "Tomate",15,2,85,65),
  DataCollection("images/assets/cocombre.png", "Cocombre",15,2,85,65),
  DataCollection("images/assets/patate.png", "Pomme de terre",15,2,85,65),
  DataCollection("images/assets/laitue.png", "Laitue",15,2,85,65),

];

