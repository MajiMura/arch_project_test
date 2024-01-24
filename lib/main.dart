import 'package:arch_project_test/data/repositories/mission_repository.dart';
import 'package:arch_project_test/data/repositories/rocket_repository.dart';
import 'package:arch_project_test/data/sources/space_x_api.dart';
import 'package:arch_project_test/ui/routing/generated_routes.dart';
import 'package:arch_project_test/ui/home/states/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final SpaceXAPI spaceXAPI = SpaceXAPI(Dio());

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => RocketRepository(spaceXAPI)),
        RepositoryProvider(create: (context) => MissionRepository(spaceXAPI)),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeBloc(
              rocketRepository: context.read<RocketRepository>(),
              landingRepository: context.read<MissionRepository>(),
            ),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arch Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: GeneratedRoutes.onGenerateRoute,
    );
  }
}
