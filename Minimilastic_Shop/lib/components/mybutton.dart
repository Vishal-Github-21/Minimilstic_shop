import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final Widget child;
  final void Function()? ontap;

  const Mybutton({super.key,required this.child,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: child,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
         borderRadius: BorderRadius.circular(12)
        ),
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
