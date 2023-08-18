import 'package:flutter/foundation.dart';
import 'package:work_orders_app/features/assets/data/models/health_history_model.dart';
import 'package:work_orders_app/features/assets/data/models/metrics_model.dart';
import 'package:work_orders_app/features/assets/data/models/specifications_model.dart';

class AssetModel {
  final List<int> assignedUserIds;
  final int companyId;
  final List<HealthHistoryModel> healthHistory;
  final double healthscore;
  final int id;
  final String image;
  final MetricsModel metrics;
  final String model;
  final String name;
  final List<String> sensors;
  final SpecificationsModel specifications;
  final String status;
  final int unitId;

  AssetModel({
    required this.assignedUserIds,
    required this.companyId,
    required this.healthHistory,
    required this.healthscore,
    required this.id,
    required this.image,
    required this.metrics,
    required this.model,
    required this.name,
    required this.sensors,
    required this.specifications,
    required this.status,
    required this.unitId,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'assignedUserIds': assignedUserIds,
      'companyId': companyId,
      'healthHistory': healthHistory.map((x) => x.toJson()).toList(),
      'healthscore': healthscore,
      'id': id,
      'image': image,
      'metrics': metrics.toJson(),
      'model': model,
      'name': name,
      'sensors': sensors,
      'specifications': specifications.toJson(),
      'status': status,
      'unitId': unitId,
    };
  }

  factory AssetModel.fromJson(Map<String, dynamic> map) {
    return AssetModel(
      assignedUserIds: List<int>.from(map['assignedUserIds']),
      companyId: map['companyId'],
      healthHistory: List<HealthHistoryModel>.from(
        (map['healthHistory'] as List?)?.map(
              (x) => HealthHistoryModel.fromJson(x),
            ) ??
            [],
      ),
      healthscore: map['healthscore'],
      id: map['id'].toInt(),
      image: map['image'],
      metrics: MetricsModel.fromJson(map['metrics']),
      model: map['model'],
      name: map['name'],
      sensors: List<String>.from(map['sensors']),
      specifications: SpecificationsModel.fromJson(map['specifications']),
      status: map['status'],
      unitId: map['unitId'],
    );
  }

  @override
  String toString() {
    return 'AssetModel(assignedUserIds: $assignedUserIds, companyId: $companyId, healthHistory: $healthHistory, healthscore: $healthscore, id: $id, image: $image, metrics: $metrics, model: $model, name: $name, sensors: $sensors, specifications: $specifications, status: $status, unitId: $unitId)';
  }

  @override
  bool operator ==(covariant AssetModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.assignedUserIds, assignedUserIds) &&
        other.companyId == companyId &&
        listEquals(other.healthHistory, healthHistory) &&
        other.healthscore == healthscore &&
        other.id == id &&
        other.image == image &&
        other.metrics == metrics &&
        other.model == model &&
        other.name == name &&
        listEquals(other.sensors, sensors) &&
        other.specifications == specifications &&
        other.status == status &&
        other.unitId == unitId;
  }

  @override
  int get hashCode {
    return assignedUserIds.hashCode ^
        companyId.hashCode ^
        healthHistory.hashCode ^
        healthscore.hashCode ^
        id.hashCode ^
        image.hashCode ^
        metrics.hashCode ^
        model.hashCode ^
        name.hashCode ^
        sensors.hashCode ^
        specifications.hashCode ^
        status.hashCode ^
        unitId.hashCode;
  }
}
