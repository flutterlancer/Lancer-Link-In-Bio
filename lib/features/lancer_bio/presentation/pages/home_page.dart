import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/domain/use_cases/get_lancer_bio.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/widgets/tabs/about.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/widgets/app_bar.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/presentation/widgets/tabs/freebies.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../domain/entities/lancer_entity.dart';

final LancerEntity lancer = GetLancerBioUseCase().call();

class BioPage extends StatelessWidget {
  const BioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, s) => [appBar(context)],
          body: Column(
            children: [
              16.h.heightBox,
              const TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  FreebiesTabWidget(),
                  AboutTabWidget(),
                ],
              ).flexible(),
            ],
          ),
        ),
      ),
    );
  }
}
