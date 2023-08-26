import 'package:work_orders_app/features/assets/data/models/specifications_model.dart';

class SpecificationsEntity {
  final int maxTemp;
  final double power;
  final int rpm;

  SpecificationsEntity({
    required this.maxTemp,
    required this.power,
    required this.rpm,
  });

  factory SpecificationsEntity.fromModel(SpecificationsModel model) {
    return SpecificationsEntity(
      maxTemp: model.maxTemp ?? 0,
      power: model.power ?? 0.0,
      rpm: model.rpm ?? 0,
    );
  }

  @override
  String toString() =>
      'Specifications(maxTemp: $maxTemp, power: $power, rpm: $rpm)';

  @override
  bool operator ==(covariant SpecificationsEntity other) {
    if (identical(this, other)) return true;

    return other.maxTemp == maxTemp && other.power == power && other.rpm == rpm;
  }

  @override
  int get hashCode => maxTemp.hashCode ^ power.hashCode ^ rpm.hashCode;
}
