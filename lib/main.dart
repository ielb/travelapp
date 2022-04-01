import 'package:chaty/src/extensions/extensions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: const [], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.instance.appName,
      debugShowCheckedModeBanner: false,
      theme: Config.instance.theme(),
      initialRoute: Routes.instance.initialRoute,
      onGenerateRoute: (settings) {
        return Routes.instance.availableRoutes(settings, context);
      },
    );
  }
}
