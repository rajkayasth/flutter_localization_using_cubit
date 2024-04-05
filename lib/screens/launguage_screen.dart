import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loaclization_in_cubit/cubit/localization_cubit.dart';
import 'package:loaclization_in_cubit/extensions.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.appString.languageScreen),
      ),
      body: SizedBox(
        width: double.infinity,
        child: BlocConsumer<LocalizationCubit, ChangeLocaleState>(
          listener: (context, state) {

          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<LocalizationCubit>().changeLanguage("hi");
                  },
                  child: const Text(
                    "Hindi-हिंदी",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<LocalizationCubit>().changeLanguage("en");
                  },
                  child: const Text(
                    "English ---- English",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<LocalizationCubit>().changeLanguage("ar");
                  },
                  child: const Text(
                    "Arabic ---عربي",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
