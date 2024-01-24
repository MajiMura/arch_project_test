import 'package:arch_project_test/domain/model/rocket/first_stage/thrust_sea_level.dart';
import 'package:arch_project_test/domain/model/rocket/first_stage/thrust_vacuum.dart';
import 'package:equatable/equatable.dart';

class FirstStage extends Equatable {
  const FirstStage({
    required this.thrustSeaLevel,
    required this.thrustVacuum,
    required this.reusable,
    required this.engines,
    required this.fuelAmountTons,
    required this.burnTimeSec,
  });

  final ThrustSeaLevel thrustSeaLevel;
  final ThrustVacuum thrustVacuum;
  final bool reusable;
  final int engines;
  final double fuelAmountTons;
  final int burnTimeSec;

  // fromJson
  factory FirstStage.fromJson(Map<String, dynamic> json) {
    return FirstStage(
      thrustSeaLevel: ThrustSeaLevel.fromJson(
        json['thrust_sea_level'] as Map<String, dynamic>,
      ),
      thrustVacuum: ThrustVacuum.fromJson(
        json['thrust_vacuum'] as Map<String, dynamic>,
      ),
      reusable: json['reusable'] as bool,
      engines: json['engines'] as int,
      fuelAmountTons: (json['fuel_amount_tons'] as num).toDouble(),
      burnTimeSec: json['burn_time_sec'] as int,
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'thrust_sea_level': thrustSeaLevel.toJson(),
      'thrust_vacuum': thrustVacuum.toJson(),
      'reusable': reusable,
      'engines': engines,
      'fuel_amount_tons': fuelAmountTons,
      'burn_time_sec': burnTimeSec,
    };
  }

  @override
  List<Object?> get props => [
        thrustSeaLevel,
        thrustVacuum,
        reusable,
        engines,
        fuelAmountTons,
        burnTimeSec,
      ];
}
