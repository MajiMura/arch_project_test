import 'package:arch_project_test/domain/model/rocket/first_stage/thrust_sea_level.dart';
import 'package:arch_project_test/domain/model/rocket/first_stage/thrust_vacuum.dart';
import 'package:equatable/equatable.dart';

class Engines extends Equatable {
  const Engines({
    required this.number,
    required this.type,
    required this.version,
    required this.layout,
    required this.engineLossMax,
    required this.propellant1,
    required this.propellant2,
    required this.thrustSeaLevel,
    required this.thrustVacuum,
    required this.thrustToWeight,
  });

  final int number;
  final String type;
  final String version;
  final String layout;
  final int engineLossMax;
  final String propellant1;
  final String propellant2;
  final ThrustSeaLevel thrustSeaLevel;
  final ThrustVacuum thrustVacuum;
  final double thrustToWeight;

  // fromJson
  factory Engines.fromJson(Map<String, dynamic> json) {
    return Engines(
      number: json['number'] as int,
      type: json['type'] as String,
      version: json['version'] as String,
      layout: json['layout'] as String,
      engineLossMax: json['engine_loss_max'] as int,
      propellant1: json['propellant_1'] as String,
      propellant2: json['propellant_2'] as String,
      thrustSeaLevel: ThrustSeaLevel.fromJson(
        json['thrust_sea_level'] as Map<String, dynamic>,
      ),
      thrustVacuum: ThrustVacuum.fromJson(
        json['thrust_vacuum'] as Map<String, dynamic>,
      ),
      thrustToWeight: (json['thrust_to_weight'] as num).toDouble(),
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'type': type,
      'version': version,
      'layout': layout,
      'engine_loss_max': engineLossMax,
      'propellant_1': propellant1,
      'propellant_2': propellant2,
      'thrust_sea_level': thrustSeaLevel.toJson(),
      'thrust_vacuum': thrustVacuum.toJson(),
      'thrust_to_weight': thrustToWeight,
    };
  }

  @override
  List<Object?> get props => [
        number,
        type,
        version,
        layout,
        engineLossMax,
        propellant1,
        propellant2,
        thrustSeaLevel,
        thrustVacuum,
        thrustToWeight,
      ];
}
