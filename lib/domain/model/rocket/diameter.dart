import 'package:equatable/equatable.dart';

class Diameter extends Equatable {
  const Diameter({
    required this.meters,
    required this.feet,
  });

  final double meters;
  final double feet;

  // fromJson
  factory Diameter.fromJson(Map<String, dynamic> json) {
    return Diameter(
      meters: (json['meters'] as num).toDouble(),
      feet: (json['feet'] as num).toDouble(),
    );
  }
  // toJson
  Map<String, dynamic> toJson() {
    return {
      'meters': meters,
      'feet': feet,
    };
  }

  @override
  List<Object?> get props => [
        meters,
        feet,
      ];
}
