import 'package:arch_project_test/data/sources/space_x_api.dart';
import 'package:arch_project_test/domain/model/rocket/rocket.dart';

abstract class IRocketRepository {
  Future<Rocket> getRocket();
}

class RocketRepository implements IRocketRepository {
  RocketRepository(this._spaceXAPI);
  final SpaceXAPI _spaceXAPI;

  @override
  Future<Rocket> getRocket() async {
    final rocket = await _spaceXAPI.getRocket();
    return rocket;
  }
}
