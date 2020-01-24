String duration2String(int duration) {
  if (duration >= 3600) {
    return (duration ~/ 3600 < 10
        ? "0${duration ~/ 3600}"
        : "${duration ~/ 3600}") +
        ":" +
        ((duration ~/ 60) % 60 < 10
            ? "0${(duration ~/ 60) % 60}"
            : "${(duration ~/ 60) % 60}") +
        ":" +
        (duration % 60 < 10 ? "0${duration % 60}" : "${duration % 60}");
  } else {
    return ((duration ~/ 60) % 60 < 10
        ? "0${(duration ~/ 60) % 60}"
        : "${(duration ~/ 60) % 60}") +
        ":" +
        (duration % 60 < 10 ? "0${duration % 60}" : "${duration % 60}");
  }
}