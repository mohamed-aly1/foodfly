import 'package:foodfly/signing.dart';
import 'package:foodfly/signing_bindings.dart';
import 'package:get/route_manager.dart';

final routes = [
  GetPage(
      name: '/signing', page: () => SigningPage(), binding: SigningBindings()),
];
