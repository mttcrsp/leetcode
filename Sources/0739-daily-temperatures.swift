/// https://leetcode.com/problems/daily-temperatures/
struct DailyTemperatures {
  func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var result = [Int](repeating: 0, count: temperatures.count)
    var stack: [(temperature: Int, day: Int)] = []

    for (day, temperature) in temperatures.enumerated() {
      while let previous = stack.last, previous.temperature < temperature {
        stack.removeLast()
        result[previous.day] = day - previous.day
      }
      stack.append((temperature, day))
    }

    return result
  }
}
