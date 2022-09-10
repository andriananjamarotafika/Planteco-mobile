class ParametreAccueil{
  final String image;
  final String parametre;
  final String titre;

  ParametreAccueil(this.image, this.parametre, this.titre);
}

List<ParametreAccueil> param = [
  ParametreAccueil('images/temperature.jpg', '15 °C', 'Temperature'),
  ParametreAccueil('images/arrosage.jpg', '2X', 'Arrosage'),
  ParametreAccueil('images/humidite.jpg', '20%', 'Humidité'),
  ParametreAccueil('images/recolte.jpg', '35 j', 'Récolte'),
];