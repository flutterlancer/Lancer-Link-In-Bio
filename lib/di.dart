import 'package:get_it/get_it.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/data/repository/lancer_repository_impl.dart';
import 'package:lancer_link_in_bio/features/lancer_bio/domain/repository/lancer_bio_repository.dart';

final injector = GetIt.instance;

void injectDependencies() {
  injector.registerLazySingleton<LancerBioRepository>(
    () => LancerBioRepositoryImpl(),
  );
}
