import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final locater = GetIt.instance;

@InjectableInit(asExtension: false)
void configureDependencies() => init(locater);
