import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:telegram_client/telegram_client.dart';
import '../config/telegram_config.dart';

class TelegramService {
  static final TelegramService _instance = TelegramService._internal();
  factory TelegramService() => _instance;
  TelegramService._internal();

  late TelegramClient _client;
  bool _isInitialized = false;
  

  Future <void> init() async {
    if (_isInitialized) return;
    
    _client = TelegramClient();

    _isInitialized = true;
  }

  Future<void> sendPhoneNumber(String phoneNumber) async {

  }

  Future<void> verifyCode(String code) async {
    
  }



}