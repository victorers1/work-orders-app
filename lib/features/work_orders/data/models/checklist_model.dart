class ChecklistModel {
  final bool? completed;
  final String? task;
  ChecklistModel({
    this.completed,
    this.task,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'completed': completed,
      'task': task,
    };
  }

  factory ChecklistModel.fromJson(Map<String, dynamic> map) {
    return ChecklistModel(
      completed: map['completed'],
      task: map['task'],
    );
  }
}
