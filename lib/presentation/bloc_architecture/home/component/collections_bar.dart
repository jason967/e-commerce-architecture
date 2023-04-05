import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reflectable/reflectable.dart';
import 'package:sample_project/presentation/bloc_architecture/common/bloc/bolc_utils.dart';
import 'package:sample_project/presentation/bloc_architecture/home/bloc/view_modules/view_modules_bloc.dart';
import 'package:sample_project/presentation/bloc_architecture/home/core/view_modules.dart';
import 'package:sample_project/presentation/bloc_architecture/home/cubit/store_type_cubit.dart';

import '../../../../domain/model/display/collection/collection.model.dart';

class CollectionsBar extends StatefulWidget {
  const CollectionsBar(
      {required this.collections, required this.storeType, super.key});
  final StoreType storeType;
  final List<Collection> collections;

  @override
  State<CollectionsBar> createState() => _CollectionsBarState();
}

class _CollectionsBarState extends State<CollectionsBar>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: widget.collections.length, vsync: this);
    _tabController.addListener(() {
      log('[test] idx : ${_tabController.index}');
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<ViewModulesBloc>().add(
          ViewModulesInitialized(
            storeType: widget.storeType,
            collections: widget.collections,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          labelPadding: const EdgeInsets.symmetric(vertical: 12),
          labelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.purple,
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.black,
          tabs: widget.collections.map((e) => Text(e.title)).toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),

              // BlocBuilder<ViewModulesBloc, ViewModulesState>(
              //     builder: (context, state) {
              //   if (state.status == BlocStatus.success) {
              //     final viewModules = state.viewModules;
              //     final image = viewModules.first.items;
              //     final viewModuleFactory = ViewModuleFactory();

              //     return SingleChildScrollView(
              //       child: Column(
              //         children: viewModules.entries
              //             .map((e) => viewModuleFactory.makeViewModule(e.value))
              //             .toList(),
              //       ),
              //     );
              //   } else {
              //     return const Center(
              //       child: CircularProgressIndicator(),
              //     );
              //   }
              // }),
            ],
          ),
        ),
      ],
    );
  }
}
