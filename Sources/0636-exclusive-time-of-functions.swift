/// https://leetcode.com/problems/exclusive-time-of-functions/
struct ExclusiveTimeOfFunctions {
  func exclusiveTime(_ n: Int, _ logs: [String]) -> [Int] {
    var times = [Int](repeating: 0, count: n)
    var stack: [Int] = []
    var previousTimestamp = 0
    for rawValue in logs {
      let components = rawValue.components(separatedBy: ":")

      let currentID = Int(components[0])!
      let currentType = components[1]
      let currentTimestamp = Int(components[2])!

      switch currentType {
      case "start":
        if let previousID = stack.last {
          times[previousID] += currentTimestamp-previousTimestamp
        }
        stack.append(currentID)
        previousTimestamp = currentTimestamp

      case "end":
        times[stack.removeLast()] += currentTimestamp-previousTimestamp+1
        if !stack.isEmpty {
          previousTimestamp = currentTimestamp+1
        }

      default:
        continue
      }
    }

    return times
  }
}
