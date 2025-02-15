import 'package:ebook_app/Providers/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/screens/homePage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ebook App',
        home: HomePage(),
      ),
    );
  }
}
