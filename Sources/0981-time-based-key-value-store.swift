/// https://leetcode.com/problems/time-based-key-value-store/
class TimeMap {
  var storage: [String: [(timestamp: Int, value: String)]] = [:]

  init() {}

  func set(_ key: String, _ value: String, _ timestamp: Int) {
    storage[key, default: []].append((timestamp, value))
  }

  func get(_ key: String, _ timestamp: Int) -> String {
    guard let items = storage[key] else { return "" }

    var lhs = 0
    var rhs = items.count-1
    var result: String?
    while lhs <= rhs {
      let mid = (lhs+rhs)/2
      if items[mid].timestamp <= timestamp {
        result = items[mid].value
        lhs = mid+1
      } else {
        rhs = mid-1
      }
    }

    return result ?? ""
  }
}
