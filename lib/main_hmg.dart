import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vini_verso/app_module.dart';
import 'package:vini_verso/shared/configs/environments.dart';
import 'package:vini_verso/shared/presentation/app_widget.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(environment: (HmgEnvironment())),
    child: AppWidget(),
  ));
}
