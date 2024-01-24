import 'package:equatable/equatable.dart';

class Height extends Equatable {
  const Height({
    required this.meters,
    required this.feet,
  });

  final double meters;
  final double feet;

  // fromJson
  factory Height.fromJson(Map<String, dynamic> json) {
    return Height(
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
