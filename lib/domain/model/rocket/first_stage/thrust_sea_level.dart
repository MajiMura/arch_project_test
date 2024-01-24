import 'package:equatable/equatable.dart';

class ThrustSeaLevel extends Equatable {
  const ThrustSeaLevel({
    required this.kN,
    required this.lbf,
  });

  final int kN;
  final int lbf;

  // fromJson
  factory ThrustSeaLevel.fromJson(Map<String, dynamic> json) {
    return ThrustSeaLevel(
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
