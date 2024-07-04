import 'package:flutter/material.dart';

class HPOutlinedButton extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final void Function() onPressed;
  final ButtonStyle? buttonStyle;

  const HPOutlinedButton(
      {super.key,
      required this.child,
      required this.onPressed,
      this.padding,
      this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: padding,
      child: ElevatedButton(
        onPressed: onPressed,
        style: buttonStyle,
        child: child,
      ),
    );
  }
}
