import 'package:equatable/equatable.dart';

class ThrustVacuum extends Equatable {
  const ThrustVacuum({
    required this.kN,
    required this.lbf,
  });

  final int kN;
  final int lbf;

  // fromJson
  factory ThrustVacuum.fromJson(Map<String, dynamic> json) {
    return ThrustVacuum(
      kN: json['kN'] as int,
      lbf: json['lbf'] as int,
    );
  }
  // toJson
  Map<String, dynamic> toJson() {
    return {
      'kN': kN,
      'lbf': lbf,
    };
  }

  @override
  List<Object?> get props => [
        kN,
        lbf,
      ];
}
