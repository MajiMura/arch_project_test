import 'package:arch_project_test/data/repositories/mission_repository.dart';
import 'package:arch_project_test/data/repositories/rocket_repository.dart';
import 'package:arch_project_test/domain/model/mission/mission.dart';
import 'package:arch_project_test/domain/model/rocket/rocket.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.rocketRepository, required this.landingRepository})
      : super(const HomeInitial()) {
    on<FetchRocketData>(_onFetchRocketData);
    on<ResetHomeState>(_onResetHomeState);
    on<FetchMissionData>(_onFetchMissionData);
  }

  final RocketRepository rocketRepository;
  final MissionRepository landingRepository;

  Future<void> _onFetchRocketData(
    FetchRocketData event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeLoading());
    try {
      final data = await rocketRepository.getRocket();
      emit(HomeSuccessRocket(rocket: data));
    } catch (e) {
      emit(const HomeFailure(message: 'Something went wrong!'));
    }
  }

  Future<void> _onResetHomeState(
    ResetHomeState event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeInitial());
  }

  Future<void> _onFetchMissionData(
    FetchMissionData event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeLoading());
    try {
      final data = await landingRepository.getMissions();
      emit(HomeSuccessMission(mission: data));
    } catch (e) {
      emit(const HomeFailure(message: 'Something went wrong!'));
    }
  }
}
