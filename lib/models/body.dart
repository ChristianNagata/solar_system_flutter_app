class Body {
  final String id;
  final String name;
  final String englishName;
  final bool isPlanet;
  final List? moons;
  final double inclination;
  final Map<String, dynamic> mass;
  final Map<String, dynamic> vol;
  final double density;
  final double gravity;
  final double meanRadius;
  final String dimension;
  final Map<String, dynamic>? aroundPlanet;
  final String discoveredBy;
  final String discoveryDate;
  final String alternativeName;
  final int avgTemp;
  final String bodyType;

  Body({
    required this.id,
    required this.name,
    required this.englishName,
    required this.isPlanet,
    this.moons,
    required this.inclination,
    required this.mass,
    required this.vol,
    required this.density,
    required this.gravity,
    required this.meanRadius,
    required this.dimension,
    this.aroundPlanet,
    required this.discoveredBy,
    required this.discoveryDate,
    required this.alternativeName,
    required this.avgTemp,
    required this.bodyType,
  });

  factory Body.fromJson(Map<String, dynamic> json) {
    print('factory');
    return Body(
      id: json['id'],
      name: json['name'],
      englishName: json['englishName'],
      isPlanet: json['isPlanet'],
      moons: json['moons'],
      inclination: json['inclination'],
      mass: json['mass'],
      vol: json['vol'],
      density: json['density'],
      gravity: json['gravity'],
      meanRadius: json['meanRadius'],
      dimension: json['dimension'],
      aroundPlanet: json['aroundPlanet'],
      discoveredBy: json['discoveredBy'],
      discoveryDate: json['discoveryDate'],
      alternativeName: json['alternativeName'],
      avgTemp: json['avgTemp'],
      bodyType: json['bodyType'],
    );
  }
}
