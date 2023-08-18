import 'package:flutter/foundation.dart';

import 'package:work_orders_app/features/work_orders/data/models/work_order_model.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/checklist_entity.dart';

class WorkOrderEntity {
  final int assetId;
  final List<int> assignedUserIds;
  final List<ChecklistEntity> checklist;
  final String description;
  final int id;
  final String priority;
  final String status;
  final String title;

  WorkOrderEntity({
    required this.assetId,
    required this.assignedUserIds,
    required this.checklist,
    required this.description,
    required this.id,
    required this.priority,
    required this.status,
    required this.title,
  });

  factory WorkOrderEntity.fromModel(WorkOrderModel model) {
    return WorkOrderEntity(
      assetId: model.assetId ?? 0,
      assignedUserIds: model.assignedUserIds ?? [],
      checklist: model.checklist
              ?.map(
                (e) => ChecklistEntity.fromModel(e),
              )
              .toList() ??
          [],
      description: model.description ?? '',
      id: model.id ?? 0,
      priority: model.priority ?? '',
      status: model.status ?? '',
      title: model.title ?? '',
    );
  }

  @override
  bool operator ==(covariant WorkOrderEntity other) {
    if (identical(this, other)) return true;

    return other.assetId == assetId &&
        listEquals(other.assignedUserIds, assignedUserIds) &&
        listEquals(other.checklist, checklist) &&
        other.description == description &&
        other.id == id &&
        other.priority == priority &&
        other.status == status &&
        other.title == title;
  }

  @override
  int get hashCode {
    return assetId.hashCode ^
        assignedUserIds.hashCode ^
        checklist.hashCode ^
        description.hashCode ^
        id.hashCode ^
        priority.hashCode ^
        status.hashCode ^
        title.hashCode;
  }

  @override
  String toString() {
    return 'WorkOrderEntity(assetId: $assetId, assignedUserIds: $assignedUserIds, checklist: $checklist, description: $description, id: $id, priority: $priority, status: $status, title: $title)';
  }
}
