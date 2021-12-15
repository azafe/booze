class Pub {
  late String id;
  late String name;
  late String imageUrl;
  final String likes;
  final String description;

  Pub({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.likes,
    required this.description,
  });
}

late final pubs = [
  Pub(
      id: '1',
      name: 'Bar Irlanda',
      imageUrl: "assets/images/bar_irlanda.jpg",
      likes: "3.0",
      description: 'Catamarca 350'),
  Pub(
      id: '2',
      name: 'Patagonia Sheraton',
      imageUrl: "assets/images/1.png",
      likes: "4.5",
      description: 'Av. Soldati 1300'),
  Pub(
      id: '3',
      name: 'Pollock',
      imageUrl: "assets/images/pollock.jpg",
      likes: "5.0",
      description: "San Martin 890"),
  Pub(
      id: '4',
      name: 'Patagonia Hilton ',
      imageUrl: "assets/images/patagonia_hilton.jpg",
      likes: "4.5",
      description: "Las piedras 1500")
];
