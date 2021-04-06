  
///A file that defines the theme (DARK and LIGHT) of the application
import 'package:flutter/material.dart';

///It specifies the type of themes available
enum ThemeKeys {LIGHT, DARK }

class AppStateNotifier extends ChangeNotifier {
	///Sets default theme to LIGHT mode
  	bool isDarkMode = false;
	
	void updateTheme() {
		this.isDarkMode = !this.isDarkMode;
		notifyListeners();
	}
}

///It defines the DARK and LIGHT theme which is used throughout the application
class AppTheme {
	AppTheme._();
	
	static final ThemeData lightTheme = ThemeData(
		brightness: Brightness.light,
		primaryColor: Colors.red[400],
		accentColor: Colors.red[200],
		backgroundColor: Colors.red[50],
		canvasColor: Colors.red[50],
		iconTheme: IconThemeData(
			color: Colors.white
		),
		textTheme: TextTheme(
			bodyText1: TextStyle(color: Colors.white),
			bodyText2: TextStyle(color: Colors.white)
		),
		cardTheme: CardTheme(
			color: Colors.red[400]
		)
	);

	static final ThemeData darkTheme = ThemeData(
		brightness: Brightness.dark,
		primaryColor: const Color(0xff1e1e1e),
		accentColor: Colors.grey,
		backgroundColor: const Color(0xff121212),
		canvasColor: Colors.grey[800],
		iconTheme: IconThemeData(
			color: Colors.red[400]
		),
		textTheme: TextTheme(
			bodyText1: TextStyle(color: Colors.red[400]),
			bodyText2: TextStyle(color: Colors.red[400])
		),
		cardTheme: CardTheme(
			color: const Color(0xff1e1e1e)
		)
	);
}