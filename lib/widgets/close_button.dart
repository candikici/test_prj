import 'package:flutter/material.dart';
import '../constant/colors.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: const ColoredBox(
          color: ProjectColor.white,
          child:
              Padding(padding: EdgeInsets.all(24.0), child: Icon(Icons.close)),
        ),
      ),
    );
  }
}
