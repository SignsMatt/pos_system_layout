import 'package:flutter/material.dart';
import 'package:pos_system_layout/controls/expandable_button.dart';
import 'package:pos_system_layout/controls/rounded_thumbnail_image.dart';
import 'package:pos_system_layout/controls/section_card.dart';
import 'package:pos_system_layout/styles.dart';

class PromoSelector extends StatelessWidget {
  const PromoSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: SectionCard(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'WRISTBAND INFORMATION',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Expanded(
                          child: RoundedThumbnailImage(
                            imagePath: 'assets/images/pizza.jpg',
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Eleanor Russell',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 20,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient: LinearGradient(colors: [
                                    Colors.amber,
                                    Colors.deepOrange,
                                    Colors.pink,
                                  ])),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  'VIP Ticket Holder',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        ExpandableButton(
                          flex: 3,
                          fgColor: kUnlinkBtnFGColor,
                          bgColor: kUnlinkBtnBGColor,
                          text: 'Unlink',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 12,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            'SELECT AVAILABLE PROMO TO APPLY',
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            '(LIMIT 1 PER ORDER)',
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        ExpandableButton(
                          text: '\$5 Off Any Item',
                          fgColor: kPromoBtnFGColor,
                          bgColor: kPromoBtnBGColor,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ExpandableButton(
                          text: 'Free Beverage',
                          fgColor: kPromoBtnFGColor,
                          bgColor: kPromoBtnBGColor,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ExpandableButton(
                          text: '20% Off Every Order',
                          fgColor: kPromoBtnFGColor,
                          bgColor: kPromoBtnBGColor,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
