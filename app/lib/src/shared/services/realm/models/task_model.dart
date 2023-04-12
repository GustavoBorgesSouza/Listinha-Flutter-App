import 'package:realm/realm.dart';

part 'task_model.g.dart';

@RealmModel()
class _Task {
  @PrimaryKey()
  late Uuid id;
  late String description;
  bool completed = false;
}

@RealmModel()
class _TaskBoard {
  @PrimaryKey()
  late Uuid id;
  late String title2;
  late List<_Task> tasks;
  bool enable = true;
}

// Relacionamentos sempre com classes _Privadas
