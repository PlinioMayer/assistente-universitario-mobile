import 'package:assistente_univeristario/src/app_router.dart';
import 'package:assistente_univeristario/src/layout/default_app_bar.dart';
import 'package:assistente_univeristario/src/layout/default_drawer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final AppNavigator _appNavigator;

  const HomeView({ Key? key, required AppNavigator appNavigator }): this._appNavigator = appNavigator, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DefaultAppBar(),
        drawer: const DefaultDrawer(),
        body: const Center(
            child: const Text('Hello World!')
        )
    );
  }
}
