import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? ontap;
  const MyTile({super.key, required this.icon, required this.text,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(text),
        onTap: ontap,
      ),
    );
  }
}
