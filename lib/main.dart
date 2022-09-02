import 'package:flutter/material.dart';
import 'package:flutter_meals_app/screens/categories_screen.dart';
import 'package:flutter_meals_app/screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delia Meals',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 20.0, fontFamily: 'Hind'),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen()
      },
    );
  }
}
