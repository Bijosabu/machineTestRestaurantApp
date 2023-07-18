import 'package:flutter/material.dart';
import 'package:restaurantapp/application/RestaurantBloc/restaurant_bloc.dart';
import 'package:restaurantapp/domain/core/dependencyInjection/injectable.dart';

// import 'package:restaurantapp/presentation/RestaurantDetails/restaurant_details.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurantapp/presentation/LoginPage/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<RestaurantBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade600),
          useMaterial3: true,
        ),
        home: LoginPage(),
      ),
    );
  }
}
