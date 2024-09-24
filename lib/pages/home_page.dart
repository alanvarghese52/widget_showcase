import 'package:flutter/material.dart';
import 'stateless_stateful_page.dart';
import 'text_image_page.dart';
import 'button_page.dart';
import 'input_page.dart';
import 'layout_page.dart';
import 'list_grid_page.dart';
import 'non_visible_page.dart';
import 'scrollable_page.dart';
import 'styling_theming_page.dart';
import 'gesture_page.dart';
import 'animation_page.dart';
import 'dialog_form_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Showcase'),
      ),
      body: ListView(
        children: [
          _buildNavigationTile(context, 'Stateless & Stateful Widgets', StatelessStatefulPage()),
          _buildNavigationTile(context, 'Text & Image Widgets', TextImagePage()),
          _buildNavigationTile(context, 'Buttons', ButtonPage()),
          _buildNavigationTile(context, 'Input Widgets', const InputPage()),
          _buildNavigationTile(context, 'Layout Widgets', const LayoutPage()),
          _buildNavigationTile(context, 'List & Grid Widgets', const ListGridPage()),
          _buildNavigationTile(context, 'Non-Visible Widgets', const NonVisiblePage()),
          _buildNavigationTile(context, 'Scrollable Widgets', const ScrollablePage()),
          _buildNavigationTile(context, 'Styling & Theming Widgets', const StylingThemingPage()),
          _buildNavigationTile(context, 'Gesture Detection Widgets', const GesturePage()),
          _buildNavigationTile(context, 'Animation Widgets', const AnimationPage()),
          _buildNavigationTile(context, 'Dialog & Form Widgets', const DialogFormPage()),
        ],
      ),
    );
  }

  Widget _buildNavigationTile(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
