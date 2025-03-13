import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(AssetsData.test))),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kFontFamily,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle16,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(r'19.19 $',
                          style: Styles.textStyle18
                              .copyWith(fontWeight: FontWeight.bold)),
                      const Spacer(),
                      const Icon(FontAwesomeIcons.solidStar,
                          color: Color(0xffFFDD4F)),
                      const SizedBox(width: 6.3),
                      const Text('4.8', style: Styles.textStyle16),
                      const SizedBox(width: 5),
                      Text('(245)',
                          style: Styles.textStyle14
                              .copyWith(color: const Color(0xff707070))),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
