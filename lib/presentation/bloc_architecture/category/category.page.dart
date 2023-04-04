import 'package:flutter/material.dart';

import '../common/component/bottom_navi_bar/bottom_navi_bar.dart';
import '../common/component/top_app_bar/top_app_bar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CategoryView();
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(AppBar()),
      bottomNavigationBar: const BottomNaviBar(),
    );
  }
}
