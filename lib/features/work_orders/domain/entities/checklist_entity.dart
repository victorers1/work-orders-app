import 'package:work_orders_app/features/work_orders/data/models/checklist_model.dart';

class ChecklistEntity {
  ChecklistEntity({
    required this.completed,
    required this.task,
  });

  factory ChecklistEntity.fromJson(Map<String, dynamic> map) {
    return ChecklistEntity(
      completed: map['completed'],
      task: map['task'],
    );
  }

  factory ChecklistEntity.fromModel(ChecklistModel model) {
    return ChecklistEntity(
      completed: model.completed ?? false,
      task: model.task ?? '',
    );
  }

  final bool completed;
  final String task;

  @override
  bool operator ==(covariant ChecklistEntity other) {
    if (identical(this, other)) return true;

    return other.task == task;
  }

  @override
  int get hashCode => task.hashCode;

  @override
  String toString() => 'ChecklistEntity(completed: $completed, task: $task)';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'completed': completed,
      'task': task,
    };
  }
}
