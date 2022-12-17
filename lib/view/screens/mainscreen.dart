import 'package:flutter/material.dart';
import 'package:homestay_raya/view/screens/shared/mainmenu.dart';
import '../../models/user.dart';
import '../shared/mainmenu.dart';

class MainScreen extends StatefulWidget {
  final User user;
  const MainScreen({super.key, required this.user});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(title: const Text("User")),
          body: const Center(child: Text("User")),
          drawer: MainMenuWidget(user: widget.user),
        ));
  }
}
