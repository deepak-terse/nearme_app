///The startup file of the application
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/style.dart';

void main() {
	runApp(
		ChangeNotifierProvider(
			create: (_) => new AppStateNotifier(),
			child: NearMe()
		)
	);
}

class NearMe extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Consumer<AppStateNotifier>(
			builder: (context, appState, child) {
				return MaterialApp(
					title: 'Near Me!',
					debugShowCheckedModeBanner: false,
					themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
					theme: AppTheme.lightTheme,
					darkTheme: AppTheme.darkTheme,
					home: Container()
				);
			}
		);
	}
}
