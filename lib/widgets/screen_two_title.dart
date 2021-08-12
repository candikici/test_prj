import 'package:flutter/material.dart';
import '../constant/text_styles.dart';

class ScreenTwoSectionTitle extends StatelessWidget {
  const ScreenTwoSectionTitle({
    Key? key,
    required this.count,
    required this.sectionNo,
  }) : super(key: key);

  final int count;
  final int sectionNo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        "Section $sectionNo ($count)",
        style: ProjectTextStyle.black24,
      ),
    );
  }
}
