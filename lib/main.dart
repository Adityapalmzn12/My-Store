import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourtrends/bloc/localization/cache_helper.dart';
import 'package:yourtrends/bloc/localization/local_cubit.dart';
import 'package:yourtrends/bloc/localization/local_state.dart';
import 'package:yourtrends/screen/home.dart';

import 'package:yourtrends/screen/navigation_bar.dart';

import 'package:yourtrends/utils/appLocalizations.dart';
import 'bloc/internet_check/network_bloc.dart';
import 'bloc/internet_check/network_event.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NetworkBloc()..add(NetworkObserve()),
          ),
          BlocProvider(
              create: (BuildContext context) =>
                  LocalCubit()..getSavedLanguage()),
        ],
        child: BlocBuilder<LocalCubit, LocalState>(
          builder: (context, state) {
            if (state is ChangeLocalState) {
              return MaterialApp(
                locale: state.locale,
                title: 'Localization in flutter example ',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                supportedLocales: const [
                  Locale('en', ""),
                  Locale("hi", ""),
                ],
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                localeResolutionCallback: (currentLocal, supportedLocales) {
                  for (var locale in supportedLocales) {
                    if (currentLocal != null &&
                        currentLocal.languageCode == locale.languageCode) {
                      return currentLocal;
                    }
                  }
                  return supportedLocales.first;
                },
                home: HomeScreen(),
              );
            }
            return HomeScreen();
          },
        ));
  }
}
