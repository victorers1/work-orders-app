import 'package:work_orders_app/features/work_orders/data/models/checklist_model.dart';

class WorkOrderModel {
  final int? assetId;
  final List<int>? assignedUserIds;
  final List<ChecklistModel>? checklist;
  final String? description;
  final int? id;
  final String? priority;
  final String? status;
  final String? title;

  WorkOrderModel({
    required this.assetId,
    required this.assignedUserIds,
    required this.checklist,
    required this.description,
    required this.id,
    required this.priority,
    required this.status,
    required this.title,
  });

  factory WorkOrderModel.fromJson(Map<String, dynamic> map) {
    return WorkOrderModel(
      assetId: map['assetId'],
      description: map['description'],
      id: map['id'].toInt(),
      priority: map['priority'],
      status: map['status'],
      title: map['title'],
      assignedUserIds: List<int>.from((map['assignedUserIds'] ?? [])),
      checklist: List<ChecklistModel>.from(
        (map['checklist'] as List?)?.map(
              (x) => ChecklistModel.fromJson(x),
            ) ??
            [],
      ),
    );
  }

  @override
  String toString() {
    return 'WorkOrderModel(assetId: $assetId, assignedUserIds: $assignedUserIds, checklist: $checklist, description: $description, id: $id, priority: $priority, status: $status, title: $title)';
  }
}
