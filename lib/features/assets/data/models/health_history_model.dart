class HealthHistoryModel {
  final String? status;
  final String? timestamp;
  HealthHistoryModel({
    this.status,
    this.timestamp,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'status': status,
      'timestamp': timestamp,
    };
  }

  factory HealthHistoryModel.fromJson(Map<String, dynamic> map) {
    return HealthHistoryModel(
      status: map['status'] as String,
      timestamp: map['timestamp'] as String,
    );
  }

  @override
  String toString() => 'HealthHistory(status: $status, timestamp: $timestamp)';

  @override
  bool operator ==(covariant HealthHistoryModel other) {
    if (identical(this, other)) return true;

    return other.status == status && other.timestamp == timestamp;
  }

  @override
  int get hashCode => status.hashCode ^ timestamp.hashCode;
}
