import 'package:unittest/unittest.dart';
import 'package:polymer/polymer.dart';
import 'package:dart_polymer_examples/click_counter/click_counter.dart';
import 'dart:html';
import 'dart:async';

class NullTreeSanitizer implements NodeTreeSanitizer {
  void sanitizeTree(Node node) {}
}

void main() {
  group('click_counter', () {
    ClickCounterElement clickCounter = null;
    ButtonElement button = null;
    ParagraphElement paragraph = null;
    
    setUp(() {
      clickCounter = new Element.html(
          '<click-counter></click-counter>',
          treeSanitizer: new NullTreeSanitizer()
      );
      document.body.append(clickCounter);
      
      button = clickCounter.shadowRoot.querySelector('button');
      paragraph = clickCounter.shadowRoot.querySelector('p');
    });
    
    tearDown(() {
      clickCounter.remove();
    });
      
    test('the default value should be 0', () {
      expect(clickCounter.count, equals(0));
      expect(paragraph.text, equals('Click count: 0 times.'));
    });
    
    test('if we change the count attribute, the count property should be updated', () {
      clickCounter.setAttribute('count', '5');
      
      Observable.dirtyCheck();
      
      Timer.run(expectAsync0(() {
        expect(clickCounter.count, equals(5));
        expect(paragraph.text, equals('Click count: 5 times.'));
      }));
    });
    
    test('count should be incremented by 1 if we click the button', () {
      button.click();
      
      Observable.dirtyCheck();
      
      Timer.run(expectAsync0(() {
        expect(clickCounter.count, equals(1));
        expect(paragraph.text, equals('Click count: 1 times.'));
      }));
    });
  });
}