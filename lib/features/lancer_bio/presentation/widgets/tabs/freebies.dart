import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/pages/bio_page.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/widgets/launch_button.dart';
import 'package:lancer_link_in_bio/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class FreebiesTabWidget extends StatelessWidget {
  const FreebiesTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: lancer.resourceFilesLinks.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            VxBox(
              child: Image.network(
                lancer.resourceFilesLinks[index].imageUrl!,
                fit: BoxFit.cover,
              ),
            )
                .width(1.sw)
                .height(160.h)
                .color(context.themeConfig.textButtonOverlayColor)
                .make()
                .cornerRadius(12.r),
            // 12.h.heightBox,
            ListTile(
              horizontalTitleGap: 36.w,
              contentPadding: EdgeInsets.zero,
              title: lancer.resourceFilesLinks[index].title!.text
                  .textStyle(
                    context.themeConfig.headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                  .make(),
              trailing: LaunchButtonWidget(
                onTap: () {},
                arrowAngleDir: -45,
              ),
            ),
          ],
        ).px20().pOnly(bottom: 12.h);
      },
    );
  }
}
