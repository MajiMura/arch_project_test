import 'package:arch_project_test/data/sources/space_x_api.dart';
import 'package:arch_project_test/domain/model/mission/mission.dart';

abstract class IMissionRepository {
  Future<List<Mission>> getMissions();
}

class MissionRepository implements IMissionRepository {
  MissionRepository(this._spaceXAPI);
  final SpaceXAPI _spaceXAPI;

  @override
  Future<List<Mission>> getMissions() async {
    final missions = await _spaceXAPI.getMissions();
    return missions;
  }
}
