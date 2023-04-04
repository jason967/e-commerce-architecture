import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/bottom_navigation_cubit.dart';
import '../../../home/cubit/store_type_cubit.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({super.key});
  void _tappedBottomNaviBtn(BuildContext context, int index) {
    if (index == 0 && BottomNavi.values[index].name.contains('home')) {
      context.read<StoreTypeCubit>().tappedTypeChangeBtn(StoreType.market);
    }

    context
        .read<BottomNavigaionCubit>()
        .tappedNavigationBtn(BottomNavi.values[index]);
  }

  @override
  Widget build(BuildContext context) {
    final blocState = context.watch<BottomNavigaionCubit>().state;
    final currentIndex = blocState.index;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => _tappedBottomNaviBtn(context, index),
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: BottomNavi.home.name,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.category),
          label: BottomNavi.category.name,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.search),
          label: BottomNavi.search.name,
        )
      ],
    );
  }
}
