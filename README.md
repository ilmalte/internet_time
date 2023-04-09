For all your [Swatch Internet Time](http://en.wikipedia.org/wiki/Swatch_Internet_Time) needs.

## Getting started

TODO: Add pubdev installation.

## Usage

The package is very easy to use, you can find the methods you can call in the  `/lib/internet_time.dart` file.

```dart
import 'package:internet_time/internet_time.dart';

void main() {
    final beats = InternetTime();
    print(beats.nowString());
    print(beats
        .fromTime(DateTime.fromMicrosecondsSinceEpoch(1681193970 * 1000000)));
}
```

## Additional information

Time precision is missing. It might be nice to implement it.
Inspired by [peterhellberg's golang package](https://github.com/peterhellberg/beats).