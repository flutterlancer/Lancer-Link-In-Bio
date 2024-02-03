import 'package:lancer_link_in_bio/features/lancer_bio/data/models/social_link.dart';

import '../../data/models/lancer_link.dart';

class LancerEntity {
  final String name;
  final String imageUrl;
  final String website;
  final String headline;
  final String bio;
  final List<SocialLink> socialLinks;
  final List<LancerLink> contentLinks;
  final List<LancerLink> resourceFilesLinks;

  LancerEntity({
    required this.name,
    required this.imageUrl,
    required this.website,
    required this.headline,
    required this.bio,
    required this.socialLinks,
    required this.contentLinks,
    required this.resourceFilesLinks,
  });
}
