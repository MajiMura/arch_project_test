import 'package:equatable/equatable.dart';

class Mission extends Equatable {
  const Mission(
      {required this.missionName,
      required this.missionId,
      required this.manufacturers,
      required this.payloadIds,
      required this.wikipedia,
      required this.website,
      required this.twitter,
      required this.description});

  final String missionName;
  final String missionId;
  final List<String> manufacturers;
  final List<String> payloadIds;
  final String wikipedia;
  final String website;
  final String twitter;
  final String description;

  // fromJson
  factory Mission.fromJson(Map<String, dynamic> json) {
    return Mission(
      missionName: json['mission_name'] as String? ?? '',
      missionId: json['mission_id'] as String? ?? '',
      manufacturers: (json['manufacturers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      payloadIds: (json['payload_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      wikipedia: json['wikipedia'] as String? ?? '',
      website: json['website'] as String? ?? '',
      twitter: json['twitter'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );
  }

  //toJson
  Map<String, dynamic> toJson() {
    return {
      'mission_name': missionName,
      'mission_id': missionId,
      'manufacturers': manufacturers,
      'payload_ids': payloadIds,
      'wikipedia': wikipedia,
      'website': website,
      'twitter': twitter,
      'description': description,
    };
  }

  @override
  List<Object?> get props => [
        missionName,
        missionId,
        manufacturers,
        payloadIds,
        wikipedia,
        website,
        twitter,
        description,
      ];
}
