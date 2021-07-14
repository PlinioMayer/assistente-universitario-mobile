import 'package:assistente_univeristario/src/layout/default_app_bar.dart';
import 'package:assistente_univeristario/src/layout/default_drawer.dart';
import 'package:flutter/material.dart';

class NovaDisciplinaView extends StatelessWidget {
  const NovaDisciplinaView({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(),
        drawer: const DefaultDrawer(),
        body: const Center(
            child: const Text('Nova Disciplina')
        )
    );
  }
}
