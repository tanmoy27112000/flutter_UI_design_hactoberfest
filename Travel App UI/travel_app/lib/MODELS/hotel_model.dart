class HotelModel {
  final String id;
  final String title;
  final String description;
  final String imgUrl;
  final double price;
  final double ratings;

  HotelModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.imgUrl,
      required this.price,
      required this.ratings});

  static List<HotelModel> hotelModel = [
    HotelModel(
        id: '1',
        title: 'Colosseum Guided Tour with Roman Forum and Palatine Hill',
        description:
            'Take a guided tour of 3 famous Roman sites: the Colosseum, Roman Forum, and Palatine Hill. Let your guide bring their history to life as you tour a UNESCO World Heritage site, the Ancient Roman social epicenter, and founding hill.',
        imgUrl:
            'https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        price: 39.01,
        ratings: 4.7),
    HotelModel(
        id: '2',
        title: 'Aquarium of Genoa: Timeslot Ticket',
        description:
            'Visit the Aquarium of Genoa to experience the largest display of aquatic biodiversity in Europe. See varieties of animals like penguins, see sharks, seals, and more.',
        imgUrl:
            'https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        price: 26.40,
        ratings: 4.5),
    HotelModel(
        id: '3',
        title: 'Pompeii Ruins Skip-the-Line Small Group Tour',
        description:
            'Experience a 2-hour guided tour of the ancient ruins of Pompeii. Learn from a professional archaeologist guide in a small group of maximum 20 people. During summer, you can also opt for a night tour.',
        imgUrl:
            'https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        price: 51.82,
        ratings: 4.8),
    HotelModel(
        id: '4',
        title: 'Ercolano: Herculaneum Priority Entrance Ticket',
        description:
            'Skip the line to the Herculaneum archeological site, a UNESCO World Heritage Site and one of the worlds most preserved ancient cities.',
        imgUrl:
            'https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        price: 17.60,
        ratings: 4.4),
    HotelModel(
        id: '5',
        title: 'Milan Cathedral and Rooftop Ticket',
        description:
            'Access all areas of the Milan Duomo, including its terraces, cathedral, museum and archaeological area. Marvel at the stained glass windows and visit the Church of St. Gottardo in Corte.',
        imgUrl:
            'https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
        price: 21.51,
        ratings: 4.6),
    HotelModel(
        id: '6',
        title: 'From Sardinia: La Maddalena Archipelago Full-Day Boat Tour',
        description:
            'Explore La Maddalena Archipelago on a boat trip from Palau or La Maddalena, accompanied by a local multilingual guide. Benefit from plenty of options for swimming, snorkeling, and sunbathing',
        imgUrl:
            'https://images.unsplash.com/photo-1606046604972-77cc76aee944?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
        price: 48.88,
        ratings: 4.6),
    HotelModel(
        id: '7',
        title: 'Venice: Marco Polo Airport Water Taxi Transfer',
        description:
            'Make your arrival in Venice truly unforgettable with a water taxi transfer to your hotel from Venice Marco Polo International Airport (VCE). Enjoy a scenic boat ride and get an amazing first look at Venice as you arrive at your hotel in comfort and style.',
        imgUrl:
            "https://images.unsplash.com/photo-1629140727571-9b5c6f6267b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80",
        price: 34.01,
        ratings: 4.4),
  ];
}
