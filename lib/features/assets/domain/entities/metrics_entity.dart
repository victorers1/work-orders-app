import 'package:work_orders_app/features/assets/data/models/metrics_model.dart';

class MetricsEntity {
  final String lastUptimeAt;
  final int totalCollectsUptime;
  final double totalUptime;

  MetricsEntity({
    required this.lastUptimeAt,
    required this.totalCollectsUptime,
    required this.totalUptime,
  });

  factory MetricsEntity.fromModel(MetricsModel model) {
    return MetricsEntity(
      lastUptimeAt: model.lastUptimeAt ?? '',
      totalCollectsUptime: model.totalCollectsUptime ?? 0,
      totalUptime: model.totalUptime ?? 0.0,
    );
  }

  @override
  String toString() =>
      'Metrics(lastUptimeAt: $lastUptimeAt, totalCollectsUptime: $totalCollectsUptime, totalUptime: $totalUptime)';

  @override
  bool operator ==(covariant MetricsEntity other) {
    if (identical(this, other)) return true;

    return other.lastUptimeAt == lastUptimeAt &&
        other.totalCollectsUptime == totalCollectsUptime &&
        other.totalUptime == totalUptime;
  }

  @override
  int get hashCode =>
      lastUptimeAt.hashCode ^
      totalCollectsUptime.hashCode ^
      totalUptime.hashCode;
}
