class Todo {
  int? id;
  String title;
  DateTime creationDate;
  bool isChecked;
  DateTime? reminderDateTime; // New field for reminder date and time

  Todo({
    this.id,
    required this.title,
    required this.creationDate,
    required this.isChecked,
    this.reminderDateTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'creationDate': creationDate.toString(),
      'isChecked': isChecked ? 1 : 0,
      'reminderDateTime': reminderDateTime != null ? reminderDateTime!.toIso8601String() : null,
    };
  }
  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'],
      title: map['title'],
      creationDate: DateTime.parse(map['creationDate']),
      isChecked: map['isChecked'] == 1,
      reminderDateTime: map['reminderDateTime'] != null ? DateTime.parse(map['reminderDateTime']) : null,
    );
  }
}
//   @override
//   String toString() {
//     return 'Todo(id : $id, title : $title, creationDate : $creationDate, isChecked : $isChecked, reminderDateTime : $reminderDateTime)';
//   }
// }
