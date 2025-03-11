import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_test/main.dart';

void main() {
  patrolTest(
    'counter state is the same after going to home and switching apps',
    framePolicy: LiveTestWidgetsFlutterBindingFramePolicy.fullyLive,
    ($) async {
      // Replace later with your app's main widget
      await $.pumpWidgetAndSettle(const MyApp());
      await $('Holla!').waitUntilVisible();
      await $.native.pressHome();
      await $.native.openNotifications();
      }
  );
}