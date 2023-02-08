import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRouter.initialRoute,
        routes: AppRouter.getAppRoutes(),
        /* Este es usado para cuando queremos generar una ruta dinamica, en este caso podemos usarla para enviarle al usuario un mensaje*/
        onGenerateRoute: AppRouter.onGenerateRoute,
        theme: AppTheme.lightTheme);
  }
}
