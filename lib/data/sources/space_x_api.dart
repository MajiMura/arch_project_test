import 'package:arch_project_test/domain/model/mission/mission.dart';
import 'package:arch_project_test/domain/model/rocket/rocket.dart';
import 'package:dio/dio.dart';

class SpaceXAPI {
  const SpaceXAPI(this.client);
  final Dio client;
  final String _baseUrl = 'https://api.spacexdata.com/v3';

  Future<Rocket> getRocket() async {
    final response = await client.get('$_baseUrl/rockets/falcon9');
    try {
      if (response.statusCode == 200) {
        final rocket = Rocket.fromJson(response.data);
        return rocket;
      } else {
        throw Exception('Failed to load launches');
      }
    } catch (e) {
      throw Exception('Failed to load launches');
    }
  }

  Future<List<Mission>> getMissions() async {
    try {
      final response = await client.get('$_baseUrl/missions');

      if (response.statusCode == 200) {
        final List<dynamic> missionsData = response.data;

        // Ensure the response is a list
        // ignore: unnecessary_type_check
        if (missionsData is List) {
          return missionsData.map((e) => Mission.fromJson(e)).toList();
        } else {
          throw Exception('Invalid response format for missions');
        }
      } else {
        throw Exception(
            'Failed to load missions. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error loading missions: $e');
    }
  }
}
