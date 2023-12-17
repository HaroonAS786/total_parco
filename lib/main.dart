import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:total_parco/utils/routes/route_names.dart';
import 'package:total_parco/utils/routes/routes.dart';
import 'package:total_parco/viewModals/form_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => FormProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          initialRoute: RoutesName.splash,
          onGenerateRoute: Routes.generateRoute,
        ));
  }
}
