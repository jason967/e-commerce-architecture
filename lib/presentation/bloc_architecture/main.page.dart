import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sample_project/presentation/bloc_architecture/home/home.page.dart';

import 'package:sample_project/presentation/bloc_architecture/home/cubit/store_type_cubit.dart';

import 'common/component/bottom_navi_bar/bottom_navi_bar.dart';
import 'common/component/top_app_bar/top_app_bar.dart';
import 'common/cubit/bottom_navigation_cubit.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => StoreTypeCubit()),
      BlocProvider(create: (_) => BottomNavigaionCubit()),
    ], child: const MainView());
  }
}

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(AppBar()),
      body: BlocBuilder<BottomNavigaionCubit, BottomNavi>(
        builder: (context, state) {
          switch (state) {
            case BottomNavi.home:
              return const HomePage();
            case BottomNavi.category:
              return Center(child: Text(state.name));
            case BottomNavi.search:
              return Center(child: Text(state.name));
            case BottomNavi.user:
              return Center(child: Text(state.name));
          }
        },
      ),
      bottomNavigationBar: const BottomNaviBar(),
    );
  }
}
