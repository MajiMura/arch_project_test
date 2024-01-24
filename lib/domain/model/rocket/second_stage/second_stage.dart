import 'package:arch_project_test/domain/model/rocket/second_stage/thrust.dart';
import 'package:equatable/equatable.dart';

class SecondStage extends Equatable {
  const SecondStage({
    required this.engines,
    required this.fuelAmountTons,
    required this.burnTimeSec,
    required this.thrust,
  });

  final int engines;
  final int fuelAmountTons;
  final int burnTimeSec;
  final Thrust thrust;

  // fromJson
  factory SecondStage.fromJson(Map<String, dynamic> json) {
    return SecondStage(
      engines: json['engines'] as int,
      fuelAmountTons: json['fuel_amount_tons'] as int,
      burnTimeSec: json['burn_time_sec'] as int,
      thrust: Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
    );
  }

  // toJson
  Map<String, dynamic> toJson() {
    return {
      'engines': engines,
      'fuel_amount_tons': fuelAmountTons,
      'burn_time_sec': burnTimeSec,
      'thrust': thrust.toJson(),
    };
  }

  @override
  List<Object?> get props => [
        engines,
        fuelAmountTons,
        burnTimeSec,
        thrust,
      ];
}
