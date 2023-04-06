import 'package:flutter/material.dart';

import '../../../../domain/model/display/view_module/view_module.model.dart';
import '../core/view_modules.dart';

@viewModuleWidget
class ProductCarousel extends StatelessWidget {
  const ProductCarousel(this.viewModule, {super.key});
  final ViewModule viewModule;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Center(
        child: Text(viewModule.type),
      ),
    );
  }
}
