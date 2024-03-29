import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loudweather/View/Screens/splash_screen.dart';
import 'package:loudweather/ViewModel/cubits/search_cubit/search_cubit.dart';

import 'ViewModel/cubits/home_screen_cubit/home_screen_cubit.dart';
import 'ViewModel/cubits/weather_cubit/weather_cubit.dart';

class LoudWeather extends StatelessWidget {
  const LoudWeather({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WeatherCubit(),
        ),
        BlocProvider(
          create: (context) => HomeScreenCubit(),
        ),
        BlocProvider(
          create: (context) => SearchCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Loud Weather',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
