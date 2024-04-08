import 'package:flutter/material.dart';

class PianoKeys extends StatelessWidget {
  const PianoKeys({super.key, required this.color, this.onTap});
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
 return  InkWell(
          onTap: onTap,
          child: Container(
          color: color,
          width: MediaQuery.of(context).size.width,
          height: 100,
                ),
        );
  }

}