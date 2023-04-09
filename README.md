For all your [Swatch Internet Time](http://en.wikipedia.org/wiki/Swatch_Internet_Time) needs.

## Getting started

TODO: Add pubdev installation.

## Usage

The package is very easy to use, you can find the methods you can call in the  `/lib/beats.dart` file.

```dart
import 'package:beats/beats.dart';

void main() {
    final beats = Beats();
    print(beats.nowString());
    print(beats
        .fromTime(DateTime.fromMicrosecondsSinceEpoch(1681193970 * 1000000)));
}
```

## Additional information

Time precision is missing. It might be nice to implement it.