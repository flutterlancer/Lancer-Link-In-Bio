import 'package:lancer_link_in_bio/features/lancer_bio/data/models/lancer_link.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/data/models/lancer_model.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/data/models/social_link.dart';

import '../../domain/repository/lancer_bio_repository.dart';

class LancerBioRepositoryImpl implements LancerBioRepository {
  @override
  LancerModel getLancerProfile() {
    return LancerModel(
      name: "Muhammad Umair Jamil",
      imageUrl:
          "https://i.ytimg.com/vi/PpPKYycAUL8/hqdefault.jpg?sqp=-oaymwEXCOADEI4CSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAtZ1zbU6A824MhSHkmOoQQTgYBpQ",
      website: "https://himsingh.com/website",
      headline: "Freelance Flutter Developer",
      bio:
          "Self-Taught Flutter Developer -Passionate about AI & Backend Development -Crafting Seamless Experiences with a Touch of Innovation ✨",
      socialLinks: [
        SocialLink(
          platform: "Twitter",
          username: "flutterlancer",
          platformUrl: "https://twitter.com",
        ),
        SocialLink(
          platform: "Linkedin",
          username: "flutterlancer",
          platformUrl: "https://linkedin.com/in",
        ),
        SocialLink(
          platform: "Email",
          platformUrl: "mailto:",
          username: "umairjamil348@gmail.com",
        ),
        SocialLink(
          platform: "Tiktok",
          platformUrl: "https://tiktok.com",
          username: "flutterlancer",
        ),
        SocialLink(
          platform: "Instagram",
          platformUrl: "https://instagram.com",
          username: "flutterlancer",
        ),
        SocialLink(
          platform: "Youtube",
          platformUrl: "https://youtube.com",
          username: "@flutterlancer",
        ),
        SocialLink(
          platform: "Youtube",
          platformUrl: "https://youtube.com",
          username: "@flutterlancer",
        ),
        SocialLink(
          platform: "Youtube",
          platformUrl: "https://youtube.com",
          username: "@flutterlancer",
        ),
        SocialLink(
          platform: "Youtube",
          platformUrl: "https://youtube.com",
          username: "@flutterlancer",
        ),
        SocialLink(
          platform: "Youtube",
          platformUrl: "https://youtube.com",
          username: "@flutterlancer",
        ),
        SocialLink(
          platform: "Youtube",
          platformUrl: "https://youtube.com",
          username: "@flutterlancer",
        ),
      ],
      contentLinks: [
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
        LancerLink.contentLink(
          title: "BINGUNG? MAU TANYA²? DISKUSI? JOIN GROUP BARUDAK FIGMA ⚡",
          link: "https://youtube.com/@flutterlancer",
        ),
      ],
      resourceFilesLinks: [
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
        LancerLink.resourceFileLink(
          title: "ESignnature Sign Apps - Mobile Apps 4 Screen",
          link: "https://www.figma.com/community",
          imageUrl:
              "https://s3-alpha-sig.figma.com/plugins/857346721138427857/77903/07411a3dd898a71fa02e026d07a14d88878dd6c4-cover?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Sy7YbxOnKHNWPSLukInDseMAE09IZRPOw6c6gUCB48fxYWwtc54DfzWdgCl6kGiugKeIJjvMD0n18UrBmjo~VJjQzF4S0NtruYd1jURLkahw~89NRHRQ37fXYbRkGMjmkAK4QpWor-VEISyReSIt07bHlgUHmNWlo5~H9Fuc36EwlS6W6~OPRcldkflUYwEJdr~YAOfkHGad6tYkceLmLAn2ODOcOVVfvTTFzSPxYagTIBM2c0lg6CjLhyhj7FQAQV8xz8joXlleZQaoL5ABbLelvbD0YKyuJr0-wjD7BOKdGTHEjz-D~lvC0zcASFMaASQn-0L61XsW4wD1rlzmIw__",
        ),
      ],
    );
  }
}
