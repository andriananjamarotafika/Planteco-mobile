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
  DataCollection("images/assets/carotte.png", "Carotte",10,3,30,130),
  DataCollection("images/assets/tomate.png", "Tomate",15,2,85,150),
  DataCollection("images/assets/cocombre.png", "Cocombre",25,1,70,110),
  DataCollection("images/assets/patate.png", "Pomme de terre",20,2,85,80),
 

];

List<DataCollection> dataPlantation = [
  DataCollection("images/assets/fraise.jpg", "Fraise",12,3,40,180),


];

