import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/curve_edge.dart';

class CustomCurveEdgeWidget extends StatelessWidget {
  const CustomCurveEdgeWidget({
    super.key,
    required this.childs,
  });

  final Widget? childs;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurveEdge(),
      child: childs,
    );
  }
}