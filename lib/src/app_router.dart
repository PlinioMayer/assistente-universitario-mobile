import 'package:flutter/material.dart';
import 'views/home_view.dart';

class AppRouter extends StatefulWidget {
  @override
  State<AppRouter> createState() => _AppRouterState();
}

class _AppRouterState extends State<AppRouter> {
  late List<MaterialPage> _pages;

  _AppRouterState() {
    this._pages = [
      MaterialPage(
        key: ValueKey('home'),
        child: HomeView(navigator: Navigator(push)),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: pages,
      onPopPage: (route, result) => route.didPop(result),
    );
  }

  push(MaterialPage page) {
    setState(() {
      pages.add(page);
    });
  }
}

class AppNavigator {
  final Function(MaterialPage) push;

  const AppNavigator(Function(MaterialPage) this.push);
}
