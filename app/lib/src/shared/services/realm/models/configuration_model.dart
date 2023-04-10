import 'package:realm/realm.dart';

part 'configuration_model.g.dart';

// classe _privada e atributios late

@RealmModel()
class _ConfigurationModel {
  late String themeModeName;
  late DateTime? syncDate;
}
