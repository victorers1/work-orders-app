import 'package:work_orders_app/features/assets/data/models/health_history_model.dart';

class HealthHistoryEntity {
  final String status;
  final String timestamp;
  HealthHistoryEntity({
    required this.status,
    required this.timestamp,
  });

  factory HealthHistoryEntity.fromModel(HealthHistoryModel model) {
    return HealthHistoryEntity(
      status: model.status ?? '',
      timestamp: model.timestamp ?? '',
    );
  }

  @override
  String toString() => 'HealthHistory(status: $status, timestamp: $timestamp)';

  @override
  bool operator ==(covariant HealthHistoryEntity other) {
    if (identical(this, other)) return true;

    return other.status == status && other.timestamp == timestamp;
  }

  @override
  int get hashCode => status.hashCode ^ timestamp.hashCode;
}
