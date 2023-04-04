import 'package:flutter/material.dart';

import 'package:sample_project/presentation/bloc_architecture/common/component/top_app_bar/top_app_bar.dart';

import '../common/component/bottom_navi_bar/bottom_navi_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchView();
  }
}

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(AppBar()),
      bottomNavigationBar: const BottomNaviBar(),
    );
  }
}
