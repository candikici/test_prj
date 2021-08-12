import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';
import '../constant/text_constants.dart';
import '../constant/text_styles.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) => Container(
      color: ProjectColor.grey,
      child: Dialog(
        backgroundColor: ProjectColor.white,
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Positioned(
                    top: -5,
                    right: 0,
                    child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: const [
                        Text("Title", style: ProjectTextStyle.black24),
                        Gap(16),
                        Text(shortDescription, style: ProjectTextStyle.black14),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  color: ProjectColor.grey,
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).devicePixelRatio < 3
                          ? 308
                          : 400,
                      minHeight: 100,
                      minWidth: double.infinity),
                  child: const CupertinoScrollbar(
                    isAlwaysShown: true,
                    child: SingleChildScrollView(
                        child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(longDescription),
                    )),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("TEST BUTTON",
                      style: ProjectTextStyle.white14),
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 14),
                      backgroundColor: ProjectColor.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              )
            ],
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ));
}
