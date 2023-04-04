import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/cubit/store_type_cubit.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  void _tappedTypeChangeBtn(int index) {
    context.read<StoreTypeCubit>().tappedTypeChangeBtn(
        (index == 0) ? StoreType.market : StoreType.beauty);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions: const [
        IconButton(
          icon: Icon(Icons.radio),
          color: Colors.white,
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.cable),
          color: Colors.white,
          onPressed: null,
        ),
      ],
      backgroundColor: Colors.purple,
      leading: const Center(child: Text('kurly')),
      centerTitle: true,
      title: Container(
        decoration: BoxDecoration(
          color: Colors.purple.shade900,
          borderRadius: BorderRadius.circular(25),
        ),
        height: 34,
        width: 180,
        child: TabBar(
          onTap: _tappedTypeChangeBtn,
          labelPadding: const EdgeInsets.only(top: 6),
          labelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.white,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          controller: _tabController,
          tabs: const [
            Text('마켓컬리'),
            Text('뷰티컬리'),
          ],
        ),
      ),
    );
  }
}
