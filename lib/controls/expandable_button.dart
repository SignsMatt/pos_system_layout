import 'package:flutter/material.dart';

class ExpandableButton extends StatelessWidget {
  const ExpandableButton({
    super.key,
    this.flex = 1,
    this.fgColor,
    this.bgColor,
    required this.text,
    this.onPressed,
  });

  final int flex;
  final Color? fgColor;
  final Color? bgColor;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 1,
          foregroundColor: fgColor,
          backgroundColor: bgColor,
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
