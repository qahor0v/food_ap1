import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app1/pages/home_page.dart';
import 'blocs/bloc_exports.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.amber,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavbarBloc>(
          create: (BuildContext context) => NavbarBloc(),
        ),
        BlocProvider<CategoryHomeBloc>(
          create: (BuildContext context) => CategoryHomeBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Ochil Dasturxon',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: const HomePage(),
      ),
    );
  }
}
