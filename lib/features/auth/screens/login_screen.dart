import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  bool _codeSent = false;
  bool _isLoading = false;
  
  @override
  void dispose() {
    // Esto es para liberar la memoria de los controladores al destruir la vista
    _phoneController.dispose();
    _codeController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.graphic_eq,
                size: 64,
                color: Colors.lightBlueAccent,
              ),
              const SizedBox(height: 16),
              const Text(
                'Atenea',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  
                )
              )


            ],
          )
        )
      )
    );
  }
}