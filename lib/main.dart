import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourtrends/screen/dashboard/order_dashboard.dart';
import 'package:yourtrends/screen/home.dart';
import 'package:yourtrends/screen/navigation_bar.dart';
import 'package:yourtrends/screen/splash.dart';
import 'bloc/internet_check/network_bloc.dart';
import 'bloc/internet_check/network_event.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => WeatherBloc(),),

        BlocProvider(
            create: (context) => NetworkBloc()..add(NetworkObserve()),
            child:  HomeScreen()),
        // BlocProvider(create: (context) => StorageBloc(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
            primaryColor:  Color(0xffffd31d)
        ),
        // home: Splash(),
        home:NavigationBottomBar(),
        supportedLocales: [
          Locale('en', "US"),
          Locale("ar", ""),
        ],

        routes: <String,WidgetBuilder>{
          '/HomePage':(BuildContext ctx)=> HomeScreen(),
         ///go one page to another
          ///Navigator.of(context).popAndPushNamed('/HomePage'));
        },
      ),
    );

  }
}
