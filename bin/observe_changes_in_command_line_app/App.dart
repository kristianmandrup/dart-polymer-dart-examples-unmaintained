import 'dart:async' show Timer;
import 'package:observe/observe.dart'
  show ChangeRecord, Observable, PathObserver, PropertyChangeRecord, observable;

class App extends Object with Observable {
  @observable
  int counter = 0;
}

main() {
  App app = new App();

  new Timer.periodic(const Duration(seconds: 1), (t) {
    app.counter++;

    // Required.
    Observable.dirtyCheck();
  });

  app.changes.listen((List<ChangeRecord> records) {
    print('There was ${records.length} change(s)');

    PropertyChangeRecord record = records[0] as PropertyChangeRecord;

    print('Change on ${record.name} with old value ${record.oldValue} and '
          'new value ${record.newValue}');
  });

  // Or... if you want easier access to the new value

  new PathObserver(app, 'counter')
      ..bindSync((newValue) => print('counter changed to $newValue'));
}