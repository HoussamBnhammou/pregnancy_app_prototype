enum Hydration {
  dehydated(name: "Dehydrated"),
  wellhydrated(name: "Well Hydrated"),
  overhydrated(name: "Over Hydrated");

  const Hydration({required this.name});

  final String name;
}
