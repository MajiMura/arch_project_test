import 'package:arch_project_test/domain/model/rocket/second_stage/composite_fairing.dart';
import 'package:equatable/equatable.dart';

class Payloads extends Equatable {
  const Payloads({
    required this.option1,
    required this.option2,
    required this.compositeFairing,
  });

  final String option1, option2;
  final CompositeFairing compositeFairing;

  @override
  List<Object?> get props => [
        option1,
        option2,
        compositeFairing,
      ];
}
