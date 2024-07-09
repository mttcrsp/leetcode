/// https://leetcode.com/problems/exclusive-time-of-functions/
struct ExclusiveTimeOfFunctions {
  func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {
    var times = [Int](repeating: 0, count: n)
    var stack: [Int] = []
    var previousTimestamp = 0
    for log in logs {
      let components = log.components(separatedBy: ":")
      let function = Int(components[0])!
      let timestampType = components[1]
      let timestamp = Int(components[2])!

      switch timestampType {
      case "start":
        if let previousFunction = stack.last {
          times[previousFunction] += timestamp-previousTimestamp
        }
        stack.append(function)
        previousTimestamp = timestamp

      case "end":
        times[function] += timestamp-previousTimestamp+1
        stack.removeLast()
        if !stack.isEmpty {
          previousTimestamp = timestamp+1
        }

      default:
        continue
      }
    }

    return times
  }
}
