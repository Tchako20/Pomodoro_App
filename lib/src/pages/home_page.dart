import 'package:flutter/material.dart';
import 'package:pomodoro_app/src/components/buttons_home_components.dart';
import 'package:pomodoro_app/src/components/header_components.dart';
import 'package:pomodoro_app/src/components/text_field_components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late final HomePageBloc bloc;

  @override
  // void initState() {
  //   super.initState();
  //   bloc = GetIt.I();
  // }

  @override
  Widget build(BuildContext context) {
    // bloc.getHomePage();
    return Scaffold(
      backgroundColor:Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HeaderComponent(title: 'App Pomodoro',subTitle: 'Utilize o metodo pomodoro para realizar suas tarefas',),
          TextFieldComponents(),
          ButtonsComponent(text: 'Iniciar Tarefa',),
        ],
      ),
    );
  }
}

