import 'package:listinha/src/shared/services/realm/models/configuration_model.dart';
import 'package:listinha/src/shared/services/realm/models/task_model.dart';
import 'package:realm/realm.dart';

LocalConfiguration config = Configuration.local(
  [
    ConfigurationModel.schema,
    Task.schema,
    TaskBoard.schema,
  ],
  initialDataCallback: (realm) {
    realm.add(ConfigurationModel('system'));
  },
  //sempre que mudar algo no realm como queria descrcao para titulo
  //é recomendado atualizar a versão aqui para evitar erro nos aparlhos
  //que estão usando uma versão antiga.
  schemaVersion: 2,
);
