import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:colorApp/themes.dart';
import 'Screens/home.dart';

String _fontData;
bool _isDarkTheme;

GetUserTheme _getUserTheme;
Future loadingFuture;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    loadingFuture = loadingValues();
  }

  Future loadingValues() async {
    await _isLoadingFirstTime();
    await _loadInitialValues();

    _getUserTheme = GetUserTheme(font: _fontData, isDarkTheme: _isDarkTheme);

    return _getUserTheme.getTheme();
  }

  Future _isLoadingFirstTime() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    if (!sharedPreferences.containsKey('isDarkTheme') &&
        !sharedPreferences.containsKey('font')) {
      sharedPreferences.setString('font', 'Roboto');
      sharedPreferences.setBool('isDarkTheme', true);
    }
  }

  Future _loadInitialValues() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    setState(() {
      _fontData = sharedPreferences.getString('font');
      _isDarkTheme = sharedPreferences.getBool('isDarkTheme');
      print(_isDarkTheme.toString() + _fontData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadingFuture,
      builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: snapshot.data,
          home: Home(),
        );
      },
    );
  }
}
