import 'package:arch_project_test/domain/model/rocket/diameter.dart';
import 'package:arch_project_test/domain/model/rocket/engines/engines.dart';
import 'package:arch_project_test/domain/model/rocket/first_stage/first_stage.dart';
import 'package:arch_project_test/domain/model/rocket/height.dart';
import 'package:arch_project_test/domain/model/rocket/landing_legs/landing_legs.dart';
import 'package:arch_project_test/domain/model/rocket/mass/mass.dart';
import 'package:arch_project_test/domain/model/rocket/payload_weights/payload_weights.dart';
import 'package:arch_project_test/domain/model/rocket/second_stage/second_stage.dart';
import 'package:equatable/equatable.dart';

class Rocket extends Equatable {
  const Rocket({
    required this.id,
    required this.active,
    required this.stages,
    required this.boosters,
    required this.costPerLaunch,
    required this.successRatePct,
    required this.firstFlight,
    required this.country,
    required this.company,
    required this.height,
    required this.diameter,
    required this.mass,
    required this.payloadWeights,
    required this.firstStage,
    required this.secondStage,
    required this.engines,
    required this.landingLegs,
    required this.wikipedia,
    required this.description,
    required this.rocketId,
    required this.rocketName,
    required this.rocketType,
  });

  final int id;
  final bool active;
  final int stages;
  final int boosters;
  final int costPerLaunch;
  final int successRatePct;
  final String firstFlight;
  final String country;
  final String company;
  final Height height;
  final Diameter diameter;
  final Mass mass;
  final List<PayloadWeights> payloadWeights;
  final FirstStage firstStage;
  final SecondStage secondStage;
  final Engines engines;
  final LandingLegs landingLegs;
  final String wikipedia;
  final String description;
  final String rocketId;
  final String rocketName;
  final String rocketType;

  // fromjson
  factory Rocket.fromJson(Map<String, dynamic> json) {
    return Rocket(
      id: json['id'] as int,
      active: json['active'] as bool,
      stages: json['stages'] as int,
      boosters: json['boosters'] as int,
      costPerLaunch: json['cost_per_launch'] as int,
      successRatePct: json['success_rate_pct'] as int,
      firstFlight: json['first_flight'] as String,
      country: json['country'] as String,
      company: json['company'] as String,
      height: Height.fromJson(json['height'] as Map<String, dynamic>),
      diameter: Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: Mass.fromJson(json['mass'] as Map<String, dynamic>),
      payloadWeights: (json['payload_weights'] as List<dynamic>)
          .map((e) => PayloadWeights.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstStage:
          FirstStage.fromJson(json['first_stage'] as Map<String, dynamic>),
      secondStage:
          SecondStage.fromJson(json['second_stage'] as Map<String, dynamic>),
      engines: Engines.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs:
          LandingLegs.fromJson(json['landing_legs'] as Map<String, dynamic>),
      wikipedia: json['wikipedia'] as String,
      description: json['description'] as String,
      rocketId: json['rocket_id'] as String,
      rocketName: json['rocket_name'] as String,
      rocketType: json['rocket_type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'active': active,
      'stages': stages,
      'boosters': boosters,
      'cost_per_launch': costPerLaunch,
      'success_rate_pct': successRatePct,
      'first_flight': firstFlight,
      'country': country,
      'company': company,
      'height': height,
      'diameter': diameter,
      'mass': mass,
      'payload_weights': payloadWeights,
      'first_stage': firstStage,
      'second_stage': secondStage,
      'engines': engines,
      'landing_legs': landingLegs,
      'wikipedia': wikipedia,
      'description': description,
      'rocket_id': rocketId,
      'rocket_name': rocketName,
      'rocket_type': rocketType,
    };
  }

  @override
  List<Object?> get props => [
        id,
        active,
        stages,
        boosters,
        costPerLaunch,
        successRatePct,
        firstFlight,
        country,
        company,
        height,
        diameter,
        mass,
        payloadWeights,
        firstStage,
        secondStage,
        engines,
        landingLegs,
        wikipedia,
        description,
        rocketId,
        rocketName,
        rocketType,
      ];
}
