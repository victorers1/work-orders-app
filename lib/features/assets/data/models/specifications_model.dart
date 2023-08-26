class SpecificationsModel {
  final int? maxTemp;
  final double? power;
  final int? rpm;
  SpecificationsModel({
    this.maxTemp,
    this.power,
    this.rpm,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'maxTemp': maxTemp,
      'power': power,
      'rpm': rpm,
    };
  }

  factory SpecificationsModel.fromJson(Map<String, dynamic> map) {
    return SpecificationsModel(
      maxTemp: map['maxTemp'],
      power: map['power']?.toDouble(),
      rpm: map['rpm'],
    );
  }

  @override
  String toString() =>
      'Specifications(maxTemp: $maxTemp, power: $power, rpm: $rpm)';

  @override
  bool operator ==(covariant SpecificationsModel other) {
    if (identical(this, other)) return true;

    return other.maxTemp == maxTemp && other.power == power && other.rpm == rpm;
  }

  @override
  int get hashCode => maxTemp.hashCode ^ power.hashCode ^ rpm.hashCode;
}
