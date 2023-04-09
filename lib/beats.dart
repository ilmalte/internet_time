library beats;

/// Package beats for all your Swatch Internet Time needs.
///
/// http://en.wikipedia.org/wiki/Swatch_Internet_Time
///
class Beats {
  // Returns the current time in beats.
  int now() => fromTime(DateTime.now());

  // Returns the current time in beats as a string.
  String nowString() => string(now());

  // Returns the given time in beats as a string.
  String string(int b) => "@$b";

  // Returns the beats at the given time.
  int fromTime(DateTime t) {
    var bmt = toBmt(t);
    return ((bmt.hour * 60 + bmt.minute) * 60 + bmt.second) * 10 ~/ 864;
  }

  // BMT returns the given time in Biel Mean Time
  DateTime toBmt(DateTime t) => t.toUtc().add(const Duration(seconds: 3600));
}
