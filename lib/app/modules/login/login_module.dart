import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: ((context, args) => LoginPage()))];
}
