enum Symptoms {
  nausea(name: "Nausea"),
  dizziness(name: "Dizziness"),
  vomiting(name: "Vomiting"),
  bloating(name: "Bloating"),
  redness(name: "Redness"),
  pain(name: "Pain"),
  bigTits(name: "Big Tits");

  const Symptoms({required this.name});

  final String name;
}
