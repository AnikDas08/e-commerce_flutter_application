import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/container_shape/circular_container.dart';
import 'package:flutterecommerce/common/widgets/custom_shape/curve_edge_widget.dart';
import 'package:flutterecommerce/utills/constants/custome_color.dart';

class CustomPrimaryHeader extends StatelessWidget {
  const CustomPrimaryHeader({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomCurveEdgeWidget(
      childs: Container(
        color: CustomColor.primarycolor,
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: CustomCircularContainer(backgroundColor: CustomColor.textWhite.withOpacity(0.1),)),
            Positioned(top: 100, right: -300, child: CustomCircularContainer(backgroundColor: CustomColor.textWhite.withOpacity(0.1),)),
            child,
          ],
        ),

      ),
    );
  }
}