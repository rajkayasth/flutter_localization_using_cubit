import 'package:flutter/material.dart';
import 'package:loaclization_in_cubit/extensions.dart';
import 'package:loaclization_in_cubit/screens/launguage_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appString.homeScreen),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LanguageScreen(),
                ),
              );
            },
            icon: const Icon(Icons.language),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.appString.demoText1,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              context.appString.demoText2,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              context.appString.demoText3,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
