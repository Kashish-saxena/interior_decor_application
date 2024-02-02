class Plants {
  String name;
  String image;
  String price;
  String review;
  String rating;
  String height;
  String temperature;
  String description;
  Plants({
    required this.name,
    required this.image,
    required this.price,
    required this.review,
    required this.temperature,
    required this.height,
    required this.rating,
    required this.description,
  });
}

List<Plants> plants = [
  Plants(
      name: "Zamioculcas",
      image: "assets/images/plant_1.png",
      price: "\$109",
      review: "269",
      temperature: "30 C",
      height: "35-36 cm",
      rating: "4.6",
      description:
          "Plants are the eukaryotes that form the kingdom Plantae; they are predominantly photosynthetic. This means that they obtain their energy from sunlight, using chloroplasts derived from endosymbiosis with cyanobacteria"),
  Plants(
      name: "Areca Palm",
      image: "assets/images/plant_2.png",
      price: "\$47",
      review: "234",
      temperature: "32 C",
      height: "35-36 cm",
      rating: "3.5",
      description:
          "Plants are the eukaryotes that form the kingdom Plantae; they are predominantly photosynthetic. This means that they obtain their energy from sunlight, using chloroplasts derived from endosymbiosis with cyanobacteria"),
  Plants(
      name: "Bacopa",
      image: "assets/images/plant_3.png",
      price: "\$53",
      review: "245",
      temperature: "31 C",
      height: "35-36 cm",
      rating: "4.9",
      description:
          "Plants are the eukaryotes that form the kingdom Plantae; they are predominantly photosynthetic. This means that they obtain their energy from sunlight, using chloroplasts derived from endosymbiosis with cyanobacteria"),
  Plants(
      name: "Lamiaceae",
      image: "assets/images/plant_4.png",
      price: "\$99",
      review: "354",
      temperature: "29 C",
      height: "35-36 cm",
      rating: "3.5",
      description:
          "Plants are the eukaryotes that form the kingdom Plantae; they are predominantly photosynthetic. This means that they obtain their energy from sunlight, using chloroplasts derived from endosymbiosis with cyanobacteria...\bLearnMore"),
];
