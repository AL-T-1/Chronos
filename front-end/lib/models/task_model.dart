class Task {
  final String name;
  final String description;
  final String deadline;
  final String type;

  Task({required this.name, required this.description, required this.deadline, required this.type});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      name: json['name'],
      description: json['description'],
      deadline: json['deadline'],
      type: json['type'],
    );
  }
}
