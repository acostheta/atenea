import 'package:flutter_dotenv/flutter_dotenv.dart';

class TelegramConfig {
    static int get apiId => int.parse(dotenv.env['TELEGRAM_API_ID'] ?? '0');
    static String get apiHash => dotenv.env['TELEGRAM_API_HASH'] ?? '';
}