import 'package:work_orders_app/features/work_orders/data/models/checklist_model.dart';

class ChecklistEntity {
  final bool completed;
  final String task;
  ChecklistEntity({
    required this.completed,
    required this.task,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'completed': completed,
      'task': task,
    };
  }

  factory ChecklistEntity.fromModel(ChecklistModel model) {
    return ChecklistEntity(
      completed: model.completed ?? false,
      task: model.task ?? '',
    );
  }

  factory ChecklistEntity.fromJson(Map<String, dynamic> map) {
    return ChecklistEntity(
      completed: map['completed'],
      task: map['task'],
    );
  }

  @override
  String toString() => 'ChecklistEntity(completed: $completed, task: $task)';

  @override
  bool operator ==(covariant ChecklistEntity other) {
    if (identical(this, other)) return true;

    return other.completed == completed && other.task == task;
  }

  @override
  int get hashCode => completed.hashCode ^ task.hashCode;
}
