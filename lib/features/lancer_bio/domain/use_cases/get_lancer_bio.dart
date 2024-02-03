import 'package:lancer_link_in_bio/di.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/domain/entities/lancer_entity.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/domain/repository/lancer_bio_repository.dart';

class GetLancerBioUseCase {
  LancerEntity call() => injector.get<LancerBioRepository>().getLancerProfile();
}
