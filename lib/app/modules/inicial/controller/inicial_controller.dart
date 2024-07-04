import 'package:flutter/widgets.dart';
import 'package:hiperprof/routes.dart';

class InitialController {
  final bool Function() isValidForm;
  final Function(String route, String search) onNavigatorProfessor;
  final searchController = TextEditingController();

  InitialController(
      {required this.isValidForm, required this.onNavigatorProfessor});

  String? validateSearch(String? value) {
    if (value?.isEmpty ?? true) {
      return 'digite o que deseja pesquisar';
    }
    return null;
  }

  void buscarProfessor() {
    final isValid = isValidForm();

    if (isValid) {
      onNavigatorProfessor(Routes.PESQUISA_PROFESSOR, searchController.text);
    }
  }

  void sejaProfessor() {}

  void consultarAula() {}
}
