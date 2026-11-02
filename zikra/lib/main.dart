import 'package:Zikra/providers/zikir_provider.dart';
import 'package:Zikra/screens/main_shell.dart';
import 'package:Zikra/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Zikra());
}

class Zikra extends StatelessWidget {
  const Zikra({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ZikirProvider()..load(),
      child: MaterialApp(
        title: 'Zikra',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        home: const MainShell(),
      ),
    );
  }
}
