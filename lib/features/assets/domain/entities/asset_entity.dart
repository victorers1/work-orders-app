import 'package:flutter/foundation.dart';
import 'package:work_orders_app/features/assets/data/models/asset_model.dart';
import 'package:work_orders_app/features/assets/data/models/metrics_model.dart';
import 'package:work_orders_app/features/assets/data/models/specifications_model.dart';
import 'package:work_orders_app/features/assets/domain/entities/health_history_entity.dart';
import 'package:work_orders_app/features/assets/domain/entities/metrics_entity.dart';
import 'package:work_orders_app/features/assets/domain/entities/specifications_entity.dart';

class AssetEntity {
  final List<int> assignedUserIds;
  final int companyId;
  final List<HealthHistoryEntity> healthHistory;
  final double healthscore;
  final int id;
  final String image;
  final MetricsEntity metrics;
  final String model;
  final String name;
  final List<String> sensors;
  final SpecificationsEntity specifications;
  final String status;
  final int unitId;

  AssetEntity({
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

  factory AssetEntity.fromModel(AssetModel model) {
    return AssetEntity(
      assignedUserIds: model.assignedUserIds ?? [],
      companyId: model.companyId ?? 0,
      healthHistory: model.healthHistory
              ?.map((e) => HealthHistoryEntity.fromModel(e))
              .toList() ??
          [],
      healthscore: model.healthscore ?? 0.0,
      id: model.id ?? 0,
      image: model.image ?? '',
      metrics: MetricsEntity.fromModel(model.metrics ?? MetricsModel()),
      model: model.model ?? '',
      name: model.name ?? '',
      sensors: model.sensors ?? [],
      specifications: SpecificationsEntity.fromModel(
        model.specifications ?? SpecificationsModel(),
      ),
      status: model.status ?? '',
      unitId: model.unitId ?? 0,
    );
  }

  @override
  String toString() {
    return 'AssetEntity(assignedUserIds: $assignedUserIds, companyId: $companyId, healthHistory: $healthHistory, healthscore: $healthscore, id: $id, image: $image, metrics: $metrics, model: $model, name: $name, sensors: $sensors, specifications: $specifications, status: $status, unitId: $unitId)';
  }

  @override
  bool operator ==(covariant AssetEntity other) {
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
