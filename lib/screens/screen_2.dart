import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../constant/colors.dart';
import '../constant/text_styles.dart';
import '../providers/horizontal_items.dart';
import '../providers/vertical_items.dart';
import '../widgets/close_button.dart' as close;
import '../widgets/screen_two_title.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) =>
      Consumer2<HorizontalItemsProvider, VerticalItemsProvider>(
          builder: (context, hip, vip, child) => Container(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              color: ProjectColor.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const close.CloseButton(),
                  ScreenTwoSectionTitle(
                    sectionNo: 1,
                    count: hip.itemsCount,
                  ),
                  const Gap(5),
                  Container(
                    padding: const EdgeInsets.only(left: 16),
                    height: 180,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          margin: const EdgeInsets.fromLTRB(16, 15, 0, 15),
                          width: MediaQuery.of(context).size.width - 60,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            elevation: 10,
                            child: Center(
                              child: Text(
                                hip.itemAt(index)!,
                                style: ProjectTextStyle.black24,
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: hip.itemsCount,
                    ),
                  ),
                  const Gap(10),
                  ScreenTwoSectionTitle(
                    sectionNo: 2,
                    count: vip.itemsCount,
                  ),
                  Flexible(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            elevation: 10,
                            child: Center(
                              child: Text(
                                vip.itemAt(index)!,
                                style: ProjectTextStyle.black24,
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: vip.itemsCount,
                    ),
                  )
                ],
              )));
}
