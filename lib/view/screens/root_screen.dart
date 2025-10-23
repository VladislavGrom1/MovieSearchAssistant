import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:movie_search_assistant/controllers/root_controller.dart';

class RootScreen extends GetView<RootController> {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Center(child: CircularProgressIndicator()),
          ),
        ),
      );
  }
}