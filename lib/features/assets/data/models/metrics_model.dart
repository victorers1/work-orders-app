class MetricsModel {
  final String? lastUptimeAt;
  final int? totalCollectsUptime;
  final double? totalUptime;
  MetricsModel({
    this.lastUptimeAt,
    this.totalCollectsUptime,
    this.totalUptime,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'lastUptimeAt': lastUptimeAt,
      'totalCollectsUptime': totalCollectsUptime,
      'totalUptime': totalUptime,
    };
  }

  factory MetricsModel.fromJson(Map<String, dynamic> map) {
    return MetricsModel(
      lastUptimeAt: map['lastUptimeAt'],
      totalCollectsUptime: map['totalCollectsUptime'],
      totalUptime: map['totalUptime'],
    );
  }

  @override
  String toString() =>
      'Metrics(lastUptimeAt: $lastUptimeAt, totalCollectsUptime: $totalCollectsUptime, totalUptime: $totalUptime)';

  @override
  bool operator ==(covariant MetricsModel other) {
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
