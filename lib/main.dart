import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sulala_driver_app/core/injection/injection.dart';
import 'package:sulala_driver_app/core/network/provider/network_helper.dart';
import 'package:sulala_driver_app/core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await NetworkHelper.loadTokens();
  runApp(ProviderScope(child: Builder(
    builder: (context) {
      return MyApp();
    },
  )));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Sulala Driver App',
      routeInformationParser: appRouter.router.routeInformationParser,
      routerDelegate: appRouter.router.routerDelegate,
      routeInformationProvider: appRouter.router.routeInformationProvider,
      // home: DriverInfoInput(),
    );
  }
}
