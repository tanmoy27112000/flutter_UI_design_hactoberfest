class Tour {
  final String title;
  final String imagePath;
  final String country;
  final String city;
  final Map latLon;

  Tour(
      {required this.title,
      required this.country,
      required this.imagePath,
      required this.city,
      required this.latLon});
}

List<Tour> allTours = [
  Tour(
      title: "Silverstone",
      country: "UK",
      imagePath: "imagePath",
      city: "silverstone",
      latLon: {"lat": 36.286999, "lon": -81.750137}),
  Tour(
      title: "São Paulo",
      country: "Brazil",
      imagePath: "imagePath",
      city: "sao",
      latLon: {"lat": -23.550520, "lon": -46.633308}),
  Tour(
      title: "Melbourne",
      country: "Australia",
      imagePath: "imagePath",
      city: "melbourne",
      latLon: {"lat": -37.813629, "lon": 144.963058}),
  Tour(
      title: "Monte Carlo",
      country: "Monaco",
      imagePath: "imagePath",
      city: "monte",
      latLon: {"lat": -27.223961, "lon": -50.977982}),
];
