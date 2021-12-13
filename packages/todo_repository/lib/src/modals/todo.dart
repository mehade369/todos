import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo.freezed.dart';

enum TodoPriority { low, medium, high }

enum TodoStatus { notStarted, inProgress, completed }

@freezed
class Todo with _$Todo {
  const Todo._();

  const factory Todo.__({
    required final String userUid,
    required final String uid,
    required final String title,
    required final TodoPriority priority,
    required final TodoStatus status,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _Todo;

  factory Todo.addNew({
    required final String userUid,
    required final String title,
    required final TodoPriority priority,
    required final TodoStatus status,
  }) =>
      Todo.__(
        userUid: userUid,
        uid: const Uuid().v4(),
        title: title,
        priority: priority,
        status: status,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  factory Todo.fromFirestore(final Map<String, dynamic> json) => Todo.__(
        userUid: json['userUid'] as String,
        uid: json['uid'] as String,
        title: json['title'] as String,
        priority: (json['priority'] as String).toPriority,
        status: (json['status'] as String).toStatus,
        createdAt: (json['createdAt'] as Timestamp).toDate(),
        updatedAt: (json['updatedAt'] as Timestamp).toDate(),
      );

  Map<String, dynamic> toFirestore() => <String, dynamic>{
        'userUid': userUid,
        'uid': uid,
        'title': title,
        'priority': priority.name,
        'status': status.name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}

extension _StringToEnum on String {
  TodoPriority get toPriority => this == 'low'
      ? TodoPriority.low
      : this == 'medium'
          ? TodoPriority.medium
          : TodoPriority.high;

  TodoStatus get toStatus => this == 'notStarted'
      ? TodoStatus.notStarted
      : this == 'inProgress'
          ? TodoStatus.inProgress
          : TodoStatus.completed;
}
