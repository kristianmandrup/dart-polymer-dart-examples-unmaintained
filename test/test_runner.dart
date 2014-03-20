import 'package:unittest/html_enhanced_config.dart';
import 'package:polymer/polymer.dart';
import 'click_counter_test.dart' as click_counter_test;

void main() {
  useHtmlEnhancedConfiguration();
  
  initPolymer();
  
  click_counter_test.main();
}