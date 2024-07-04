import 'package:flutter/material.dart';
import 'package:hiperprof/app/modules/inicial/views/inicial_view.dart';
import 'package:hiperprof/app/modules/pesquisa_professor/views/pesquisa_professor_view.dart';
import 'package:hiperprof/routes.dart';
import 'package:hiperprof/theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomThemeData.light(),
      darkTheme: CustomThemeData.dark(),
      themeMode: ThemeMode.system,
      routes: {
        Routes.INITIAL: (context) => const InitialView(),
        Routes.PESQUISA_PROFESSOR: (context) => const PesquisaProfessorView(),
      },
    );
  }
}
