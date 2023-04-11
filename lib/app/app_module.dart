import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/modules/home/home_module.dart';
import 'package:todolist/app/modules/login/login_module.dart';

import 'modules/email.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [Bind.lazySingleton((i) => Email())];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/login', module: LoginModule()),
      ];
}
