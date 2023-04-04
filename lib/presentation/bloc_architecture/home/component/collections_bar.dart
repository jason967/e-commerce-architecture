import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/presentation/bloc_architecture/common/bloc/bolc_utils.dart';
import 'package:sample_project/presentation/bloc_architecture/home/bloc/view_modules/view_modules_bloc.dart';
import 'package:sample_project/presentation/bloc_architecture/home/view_modules/view_modules.dart';

import '../../../../domain/model/display/collection/collection.model.dart';

class CollectionsBar extends StatefulWidget {
  const CollectionsBar(this.collections, {super.key});
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
              BlocBuilder<ViewModulesBloc, ViewModulesState>(
                builder: (context, state) {
                  if (state.status == BlocStatus.success) {
                    final viewModules = state.viewModules;
                    final image = viewModules.first.items;
                    // log('[test] image : $image');
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          DataMirrors().mirrors['reflectsample'],
                          Image.network(image[1].image),
                          Image.network(image[2].image),
                        ],
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              Center(
                child: Container(
                  height: 400,
                  child: Text(widget.collections[1].title),
                ),
              ),
              Center(
                child: Container(
                  height: 400,
                  child: Text(widget.collections[2].title),
                ),
              ),
              Center(
                child: Container(
                  height: 400,
                  child: Text(widget.collections[3].title),
                ),
              ),
              Center(
                child: Container(
                  height: 400,
                  child: Text(widget.collections[4].title),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
