import 'package:flutter/material.dart';
import 'package:hiperprof/app/components/hp_elevated_buton.dart';
import 'package:hiperprof/app/components/hp_outilined_button.dart';
import 'package:hiperprof/app/components/hp_text_form_search.dart';
import 'package:hiperprof/app/components/hp_text_title.dart';
import 'package:hiperprof/app/modules/inicial/controller/inicial_controller.dart';

class InitialView extends StatefulWidget {
  const InitialView({super.key});

  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  final _key = GlobalKey<FormState>();
  late final mediaQuery = MediaQuery.of(context);
  late final controller = InitialController(
    isValidForm: () => _key.currentState?.validate() ?? false,
    onNavigatorProfessor: (route, search) =>
        Navigator.pushNamed(context, route, arguments: search),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          height: mediaQuery.size.height - mediaQuery.padding.top,
          child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                  key: _key,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const HPTextTitle(
                        text: 'Encontre o Professor Ideal para você !',
                        size: HPSizeTitle.large,
                      ),
                      HPTextFormSearch(
                        controller: controller.searchController,
                        validator: controller.validateSearch,
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                      ),
                      HPElevatedButton(
                        onPressed: controller.buscarProfessor,
                        child: const Text('buscar o professor ideal'),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
              child: Column(
                children: [
                  const SizedBox(height: 99),
                  HPElevatedButton(
                    onPressed: controller.sejaProfessor,
                    buttonStyle: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColorLight,
                    ),
                    child: const Text('seja um professor'),
                  ),
                  HPOutlinedButton(
                    onPressed: controller.consultarAula,
                    child: const Text(
                      'consultar minhas aulas',
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
