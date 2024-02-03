import 'package:lancer_link_in_bio/features/lancer_bio/domain/entities/lancer_entity.dart';

class LancerModel extends LancerEntity {
  LancerModel({
    required super.name,
    required super.imageUrl,
    required super.website,
    required super.headline,
    required super.bio,
    required super.socialLinks,
    required super.contentLinks,
    required super.resourceFilesLinks,
  });
}
