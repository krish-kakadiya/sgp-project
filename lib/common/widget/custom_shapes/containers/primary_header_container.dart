import 'package:flutter/material.dart';

import '../curved_edges/Curved_Edges_Widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomCurvedEdgesWidget(
      child: Container(
        color: Colors.red,


          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: CircularContainer(backgroundColor: Colors.white.withOpacity(0.1))),
              Positioned(top: 100, right: -300, child: CircularContainer(backgroundColor: Colors.white.withOpacity(0.1))),

              child,
            ],
          ),


      ),
    );
  }
}