import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/pages/bio_page.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/widgets/social_link_button.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialLinksWidget extends StatelessWidget {
  const SocialLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: lancer.socialLinks.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisExtent: 36.h,
        mainAxisSpacing: 8.h,
        // crossAxisSpacing: 8.w,
      ),
      itemBuilder: (context, index) =>
          SocialLinkButtonWidget(link: lancer.socialLinks[index]),
    ).h(
      lancer.socialLinks.length % 3 == 0
          ? (40 * (lancer.socialLinks.length / 3)).h
          : 40 * ((lancer.socialLinks.length / 3).ceil()).h,
    );
  }
}
