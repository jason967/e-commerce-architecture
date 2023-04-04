import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/bottom_navigation_cubit.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final type = context.watch<BottomNavigaionCubit>().state.toName;

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
      centerTitle: true,
      title: Text(type),
    );
  }
}
