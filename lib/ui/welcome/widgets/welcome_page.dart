import 'package:arch_project_test/ui/routing/app_routes.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Image.asset(
                  'assets/graphics/space_x_logo.png',
                  height: 180,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.homeScreen),
                child: const Text('Go to Home Page')),
          ],
        ),
      ),
    );
  }
}
