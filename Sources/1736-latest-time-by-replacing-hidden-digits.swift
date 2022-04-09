/// https://leetcode.com/problems/latest-time-by-replacing-hidden-digits/
struct LatestTimeByReplacingHiddenDigits {
  func maximumTime(_ time: String) -> String {
    var time = Array(time)

    switch (time[0], time[1]) {
    case ("?", "?"):
      time[0] = "2"
      time[1] = "3"
    case ("?", "4"), ("?", "5"), ("?", "6"), ("?", "7"), ("?", "8"), ("?", "9"):
      time[0] = "1"
    case ("?", _):
      time[0] = "2"
    case ("2", "?"):
      time[1] = "3"
    case (_, "?"):
      time[1] = "9"
    case (_, _):
      break
    }

    if time[3] == "?" {
      time[3] = "5"
    }

    if time[4] == "?" {
      time[4] = "9"
    }

    return String(time)
  }
}
