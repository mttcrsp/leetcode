/// https://leetcode.com/problems/maximum-profit-in-job-scheduling/
struct MaximumProfitInJobScheduling {
  func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
    var jobs: [Int: [Job]] = [:]
    for ((startTime, endTime), profit) in zip(zip(startTime, endTime), profit) {
      jobs[endTime, default: []].append(
        Job(startTime: startTime, endTime: endTime, profit: profit)
      )
    }

    var records = [(endTime: 0, profit: 0)]
    func recordProfit(at time: Int) -> Int {
      var lhs = 0
      var rhs = records.count-1
      var candidate: Int?
      while lhs <= rhs {
        let mid = (lhs+rhs)/2
        let record = records[mid]
        if record.endTime < time {
          candidate = record.profit
          lhs = mid+1
        } else if record.endTime > time {
          rhs = mid-1
        } else {
          return record.profit
        }
      }

      return candidate ?? 0
    }

    for (endTime, jobs) in jobs.sorted(by: { $0.key < $1.key }) {
      var maxProfit = records.last?.profit ?? .min
      for job in jobs {
        maxProfit = max(maxProfit, job.profit+recordProfit(at: job.startTime))
      }

      records.append((endTime, maxProfit))
    }

    return records.map(\.profit).max() ?? 0
  }

  struct Job {
    let startTime: Int
    let endTime: Int
    let profit: Int
  }
}
