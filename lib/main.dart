import 'package:atenea/core/telegram/telegram_service.dart';
import 'package:atenea/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';



 Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await TelegramService().init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'atenea',
      theme: ThemeData.dark(useMaterial3: true),
      home: const LoginScreen(),
    );
  }
}
