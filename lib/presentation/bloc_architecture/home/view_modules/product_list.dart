import 'package:flutter/material.dart';

import '../../../../domain/model/display/view_module/view_module.model.dart';
import '../core/view_modules.dart';

@viewModuleWidget
class ProductList extends StatelessWidget {
  const ProductList(this.viewModule, {super.key});
  final ViewModule viewModule;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      color: Colors.orange,
      child: Center(
        child: Text(viewModule.type),
      ),
    );
  }
}
