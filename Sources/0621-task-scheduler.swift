/// https://leetcode.com/problems/task-scheduler/
struct TaskScheduler {
  func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
    guard !tasks.isEmpty else {
      return 0
    }

    guard n > 0 else {
      return tasks.count
    }

    var frequencies: [Character: Int] = [:]
    for task in tasks {
      frequencies[task, default: 0] += 1
    }

    var maxFrequencyCount = 0
    var maxFrequency = Int.min
    for (_, frequency) in frequencies {
      if frequency == maxFrequency {
        maxFrequencyCount += 1
      } else if frequency > maxFrequency {
        maxFrequencyCount = 1
        maxFrequency = frequency
      }
    }

    let cooldownRequired = tasks.count
    let cooldownNotRequired = (maxFrequency-1)*(n+1)+maxFrequencyCount
    return Swift.max(cooldownRequired, cooldownNotRequired)
  }
}
